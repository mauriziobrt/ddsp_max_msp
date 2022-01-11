/// @file
///	@ingroup 	minexamples
///	@copyright	Copyright 2018 The Min-DevKit Authors. All rights reserved.
///	@license	Use of this source code is governed by the MIT License found in the License.md file.

#include "torch/torch.h"
#include "c74_min.h"
#include "ddsp_model.hpp"

#define B_SIZE 1024

using namespace c74::min;


class me_ddsp_tilde : public object<me_ddsp_tilde> {
public:
    MIN_DESCRIPTION	{"DDSP Wrapper for MAX/MSP"};
    MIN_TAGS		{"utilities"};
    MIN_AUTHOR		{"Maurizio Berta"};
    MIN_RELATED		{"print, jit.print, dict.print"};
    
    inlet<>  left	{ this, "(bang) post greeting to the max console" };
    inlet<>  right { this, "(bang) post another greeting to the max console"};
    outlet<> output	{ this, "(anything) output the message which is posted to the max console" };

    // define an optional argument for setting the message
    argument<symbol> greeting_arg { this, "greeting", "Initial value for the greeting attribute.",
        MIN_ARGUMENT_FUNCTION {
            greeting = arg;
        }
    };

    
    // the actual attribute for the message
    attribute<symbol> greeting { this, "greeting", "hello world",
        description {
            "Greeting to be posted. "
            "The greeting will be posted to the Max console when a bang is received."
        }
    };

    message<> dspsetup { this, "dspsetup",
        MIN_FUNCTION {
            number samplerate = args[0];
            //int vectorsize = args[1];
            
            m_one_over_samplerate = 1.0 / samplerate;
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

    // post to max window == but only when the class is loaded the first time
    message<> maxclass_setup { this, "maxclass_setup",
        MIN_FUNCTION {
            cout << "hello world" << endl;
            return {};
        }
    };

        private:
            double m_one_over_samplerate {1.0};
            float pitch_buffer[2 * B_SIZE];
            float loudness_buffer[2 * B_SIZE];
            float out_buffer[2 * B_SIZE];
            
            int head;
            
            std::thread *compute_thread;
            
            DDSPModel *model;
            
};


MIN_EXTERNAL(me_ddsp_tilde);
