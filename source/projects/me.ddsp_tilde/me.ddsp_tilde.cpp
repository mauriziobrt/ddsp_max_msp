/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "torch/torch.h"
#include "c74_min.h"
#include "ddsp_model.hpp"

#define B_SIZE 1024

using namespace c74::min;


class me_ddsp_tilde : public object<me_ddsp_tilde>, public vector_operator<> {
public:
    MIN_DESCRIPTION	{"DDSP Wrapper for MAX/MSP"};
    MIN_TAGS		{"audio, deep learning, ai"};
    MIN_AUTHOR		{"Maurizio Berta"};
    //MIN_RELATED		{"funiculìfuniculà~"};
    
    inlet<>  in1	{ this, "(signal) Input 1", "frequency" };
    inlet<>  in2 { this, "(signal) Input 2", "loudness"};
    outlet<> output	{ this, "(signal) Output", "signal" };
    
    me_ddsp_tilde() {
        model = new DDSPModel;
        m_head = 0;
        cout << "Value of m_head at object creation:" << m_head << endl;
    };
    
//    message<> dspsetup { this, "dspsetup",
//        MIN_FUNCTION {
//            number samplerate = args[0];
//            //int vectorsize = args[1];
//            m_one_over_samplerate = 1.0 / samplerate;
//            return {};
//        }
//    };
    
    //this is supposed to take a load message which opens a finder instance where it is possible to choose the model
    //the argument of the load function must be a path to the model.
    message<> load { this, "load",
        MIN_FUNCTION {
            //adesso funziona cioè chiunque lo usi deve cambiare il percorso qua ma nulla di grave
            string search_path = "/Volumes/MacintoshHD/Users/LudovicoBerta/Downloads/natale_2021/ddsp_pretrained_saxophone/ddsp_demo_pretrained.ts";
            
            int status = model->load(search_path);
            cout << status << endl;
            if (!status)
            {
            cout<< "successfully loaded model" <<endl;
            }
            else
            {
            cout<< "error loading model" <<endl;
            }
            return{};
    }
    };
    
    // respond to the bang message to do something
    message<> bang { this, "bang", "Test if Torch is working.",
        MIN_FUNCTION {
            torch::Tensor tensor = torch::rand({2,3});
            int i = 1;
            cout << tensor << endl;    // post to the max console
            output.send(i);       // send out our outlet
            return {};
            }
    };
            // respond to the bang message to do something

    void thread_perform(float *pitch, float *loudness, float *out_buffer, int buffer_size){
            model->perform(pitch, loudness, out_buffer, buffer_size);
    }
            

    // Questo viene eseguito in continuazione a dsp acceso
    void operator()(audio_bundle input, audio_bundle output){
            
//            m_pitch_buffer[m_head] = in1;
//            m_loudness_buffer[m_head] = in2;

            auto* in1 = input.samples(0);
            //cout << "Value inside in1: "<< *in1 << endl;
            auto* in2 = input.samples(1);
            //cout << "Value inside in2: "<< *in2 << endl;
            auto* out = output.samples(0);
                       
            
            
            
            //semplice +~
//            for (auto i = 0; i < input.frame_count(); i++){
//            out[i] = in1[i] + in2[i];
//            }

            //ogni
            int n = input.frame_count();
            
            for (int i = 0; i < n; i++) {
                m_pitch_buffer[m_head + i] = (float) in1[i];
                m_loudness_buffer[m_head + i] = (float) in2[i];
                out[i] = m_out_buffer[m_head + i];
            }
            
            
            //cout << "Il valore di n è: " << n << "\n"<< endl;
            
//            the length of this signal-vector ().s_n.

            // primo step: copio nei buffer il valore attuale di pitch e loudness
            
//            std::copy(in1, in1 + n, m_pitch_buffer);
            
            //il problema è che qua usiamo i double mentre in pd usiamo i float
            
            //std::copy(in2, in2 + n, m_loudness_buffer);
            
            //std::copy(m_out_buffer, m_out_buffer + n, out);
            
            
//            //ciò che entra in nel buffer è sbagliato, dentro in1 il valore è 46.1 dentro pitch_buffer 2.00
//            memcpy(m_pitch_buffer + m_head, in1, n * sizeof(float));
//            for(auto i = 0; i < input.frame_count(); i++)
//
//
//            //printf("Il buffer del pitch tiene %f \n", *m_pitch_buffer);
//            // m_pitch_buffer += m_head;
//            memcpy(m_loudness_buffer + m_head, in2, n * sizeof(double));
//            // ci vuole del preprocessing per dividere da una parte il pitch e dall'altra la loudness
//            //e copio il valore di m_out_buffer in out
//            memcpy(out, m_out_buffer + m_head, n * sizeof(double));
            //cout << "Ma l'out che contiene all'inizio? .. " << *m_out_buffer << "  Ah ok..."<< endl;

            m_head += n;
                        
            // i valori che arrivano al modello sono sballati, all'ingresso qua sono giusti, poi si sballano quando vengono copiati nel buffer.
            if (!(m_head % B_SIZE))
            {
            // io credo che esegua l'operazione ogni tot vettori e non sempre
                if (compute_thread)
                    {
                        //stops the thread execution:
                        compute_thread->join();
                        //ad ogni step lui joina il thread per qualche ragione, cioè creo thread e lo rimetto dentro main, creo thread e lo rimetto dentro.
                    }
                int model_head = ((m_head + B_SIZE) % (2 * B_SIZE));
                //cout << "Value of " <<model_head <<endl;
                compute_thread = new std::thread(&me_ddsp_tilde::thread_perform, this,
                                             m_pitch_buffer + model_head,
                                             m_loudness_buffer + model_head,
                                             m_out_buffer + model_head,
                                             B_SIZE);
            //Il problema è il casting dei valori
            //cout << "Contenuto out buffer:  " << *m_out_buffer << " Se nan => valori in ingresso sbagliati. "<< endl;
            //compute thread prende i 2 buffer di ingresso applica il processo e poi copia dentro m_out_buffer.
                m_head = m_head % (2* B_SIZE);
            }
            //return m_out_buffer[m_head];
    }
    private:
        //double m_one_over_samplerate {1.0};
        float m_pitch_buffer[2 * B_SIZE];
        float m_loudness_buffer[2 * B_SIZE];
        float m_out_buffer[2 * B_SIZE];

        int m_head;
            
        std::thread *compute_thread;
            
        DDSPModel *model;
};


MIN_EXTERNAL(me_ddsp_tilde);
