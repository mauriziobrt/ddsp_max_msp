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
    MIN_RELATED		{"panner~"};
    
    inlet<>  in1	{ this, "(signal) Input 1" };
    inlet<>  in2 { this, "(signal) Input 2"};
    outlet<> output	{ this, "(signal) Output", "signal" };
    
    me_ddsp_tilde() {
        model = new DDSPModel;
        m_head = 0;
    };

    message<> dspsetup { this, "dspsetup",
        MIN_FUNCTION {
            number samplerate = args[0];
            //int vectorsize = args[1];
            
            m_one_over_samplerate = 1.0 / samplerate;
            return{};
        }
    };
    
    void ddsp_tilde_load(me_ddsp_tilde, symbol *sym)
            {
            int status = model->load(c74::min::symbol(sym));
            if (!status)
            {
            std::cout<< "successfully loaded model" <<std::endl;
            }
            else
            {
            std::cout<< "error loading model" <<std::endl;
            }
    }
    
    message<> load { this, "load",
        MIN_FUNCTION {
            int status = model->load(c74::min::atom(args));
            if (!status)
            {
            std::cout<< "successfully loaded model" <<std::endl;
            }
            else
            {
            std::cout<< "error loading model" <<std::endl;
            }
            return{};
    }
    };
    
    // respond to the bang message to do something
    message<> bang { this, "bang", "Post the greeting.",
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
            
    
            
            void operator()(audio_bundle input, audio_bundle output){
            
            auto* in1 = input.samples(0);
            auto* in2 = input.samples(1);
            auto* out = output.samples(0);
            // in pratica mo' devo copiare nei buffer a robba
            
            memcpy(m_pitch_buffer + m_head, in1,3 * sizeof(float));
            memcpy(m_loudness_buffer + m_head, in2, 3 * sizeof(float));
            memcpy(out, m_out_buffer + m_head, 3 * sizeof(float));
            
            m_head += 3;
            
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
            
            }
    private:
        double m_one_over_samplerate {1.0};
        float m_pitch_buffer[2 * B_SIZE];
        float m_loudness_buffer[2 * B_SIZE];
        float m_out_buffer[2 * B_SIZE];

        int m_head;
            
        std::thread *compute_thread;
            
        DDSPModel *model;
            
};


MIN_EXTERNAL(me_ddsp_tilde);
