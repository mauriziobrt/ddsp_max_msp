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
    MIN_TAGS		{"utilities"};
    MIN_AUTHOR		{"Maurizio Berta"};
    MIN_RELATED		{"funiculìfuniculà~"};
    
    inlet<>  in1	{ this, "(signal) Input 1" };
    inlet<>  in2 { this, "(signal) Input 2"};
    outlet<> output	{ this, "(signal) Output", "signal" };
    
    me_ddsp_tilde() {
        model = new DDSPModel;
        m_head = 0;
        cout << "Value of m_head at object creation:" << m_head << endl;
    };
    
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

    void thread_perform(float *pitch, float *loudness, float *out_buffer, int buffer_size)
            {
            model->perform(pitch, loudness, out_buffer, buffer_size);
            }
                
                
    //Qua sta roba che dovrebbe fare? Perchè esce fuori quel suono continuo dall'output?
    void operator()(audio_bundle input, audio_bundle output){
            
            auto* in1 = input.samples(0);
            auto* in2 = input.samples(1);
            auto* out = output.samples(0);
            //questi qua sopra funzionano, mandano fuori i valori audio in tempo reale
            
            int n = 1024; //Solo che n non è uguale a 3 nel codice originale ma al 5 elemento dell'array di ingresso.
//            the length of this signal-vector ().s_n.
            
            
            // in pratica mo' devo copiare nei buffer a robba
            
            memcpy(m_pitch_buffer + m_head, in1, n * sizeof(float));

            memcpy(m_loudness_buffer + m_head, in2, n * sizeof(float));
            // ci vuole del preprocessing per dividere da una parte il pitch e dall'altra la loudness
            memcpy(out, m_out_buffer + m_head, n * sizeof(float));
            
            
            m_head += n;
            
            if (!(m_head % B_SIZE))
            {
                if (compute_thread)
                    {
                        compute_thread->join();
                    }
            int model_head = ((m_head + B_SIZE) % (2 * B_SIZE));
            compute_thread = new std::thread(&me_ddsp_tilde::thread_perform, this,
                                             m_pitch_buffer + model_head,
                                             m_loudness_buffer + model_head,
                                             m_out_buffer + model_head,
                                             B_SIZE);
            m_head = m_head % (2* B_SIZE);
            }
            //cout << "Value of m_head at dsp operation:" << m_head << endl;
    }
    private:
//        double m_one_over_samplerate {1.0};
        float m_pitch_buffer[2 * B_SIZE];
        float m_loudness_buffer[2 * B_SIZE];
        float m_out_buffer[2 * B_SIZE];

        int m_head;
            
        std::thread *compute_thread;
            
        DDSPModel *model;
            
};


MIN_EXTERNAL(me_ddsp_tilde);
