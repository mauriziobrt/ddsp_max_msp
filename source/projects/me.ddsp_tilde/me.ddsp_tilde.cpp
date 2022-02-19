/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "torch/torch.h"
#include "c74_min.h"
#include "ddsp_model.hpp"

#define B_SIZE 1024

// add a switch cpu

using namespace c74::min;


class me_ddsp_tilde : public object<me_ddsp_tilde>, public vector_operator<> {
public:
    MIN_DESCRIPTION	{"DDSP Wrapper for MAX/MSP"};
    MIN_TAGS		{"audio, deep learning, ai"};
    MIN_AUTHOR		{"Maurizio Berta"};
    
    inlet<>  in1	{ this, "(signal) Input frequency", "frequency" };
    inlet<>  in2 { this, "(signal) Input loudness", "loudness"};
    outlet<> output	{ this, "(signal) Output", "signal" };
    c74::min::path m_path;
    
    me_ddsp_tilde() {
        model = new DDSPModel;
        m_head = 0;
    };
    
    ~me_ddsp_tilde(){
    }
    
    argument<symbol> path_arg{this, "model path",
    "Absolute path to the pretrained model."};

    message<> load { this, "load",
        MIN_FUNCTION {

            string path = args[0];
            string search_path = path; //"/Volumes/MacintoshHD/Users/LudovicoBerta/Downloads/natale_2021/ddsp_pretrained_saxophone/ddsp_demo_pretrained.ts";
            
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

    void thread_perform(float *pitch, float *loudness, float *out_buffer, int buffer_size){
            model->perform(pitch, loudness, out_buffer, buffer_size);
    }
            

    // Questo viene eseguito in continuazione a dsp acceso
    void operator()(audio_bundle input, audio_bundle output){

            auto* in1 = input.samples(0);
            auto* in2 = input.samples(1);
            auto* out = output.samples(0);

            int n = input.frame_count();
            
            for (int i = 0; i < n; i++) {
                m_pitch_buffer[m_head + i] = (float) in1[i];
                m_loudness_buffer[m_head + i] = (float) in2[i];
                out[i] = m_out_buffer[m_head + i];
            }

            m_head += n;

            if (!(m_head % B_SIZE))
            {
            // esegue l'operazione sun un tot di vettori
                if (compute_thread)
                    {
                        //stops the thread execution:
                        compute_thread->join();
                    }
                int model_head = ((m_head + B_SIZE) % (2 * B_SIZE));
                compute_thread = new std::thread(&me_ddsp_tilde::thread_perform, this,
                                             m_pitch_buffer + model_head,
                                             m_loudness_buffer + model_head,
                                             m_out_buffer + model_head,
                                             B_SIZE);

            //compute thread prende i 2 buffer di ingresso applica il processo e poi copia dentro m_out_buffer.
                m_head = m_head % (2* B_SIZE);
            }
    }
    private:
        float m_pitch_buffer[2 * B_SIZE];
        float m_loudness_buffer[2 * B_SIZE];
        float m_out_buffer[2 * B_SIZE];

        int m_head;
            
        std::thread *compute_thread;
            
        DDSPModel *model;
};


MIN_EXTERNAL(me_ddsp_tilde);
