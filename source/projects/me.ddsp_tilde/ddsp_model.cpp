//
//  ddsp_model.cpp
//  me.ddsp_tilde
//
//  Created by Maurizio Berta on 11/01/2022.
//

#include "ddsp_model.hpp"
#include <iostream>
#include <vector>
#include <stdlib.h>

DDSPModel::DDSPModel() : m_loaded(0)
{
    at::init_num_threads();
}

int DDSPModel::load(std::string path)
{
    try
    {
        //Return a script_module object
        m_scripted_model = torch::jit::load(path);
        // eval activates the inference of the model
        m_scripted_model.eval();
        // set the model to work with cpu
        m_scripted_model.to(DEVICE);
        m_loaded = 1;
        return 0;
    }
    catch (const std::exception &e)
    {
        std::cerr << e.what() << '\n';
        std::cout<<(e.what())<<std::endl;
        m_loaded = 0;
        return 1;
    }
}

void DDSPModel::perform(float *pitch, float *loudness, float *out_buffer, int buffer_size)
{
    torch::NoGradGuard no_grad;
    if (m_loaded)
    {
        //from_blob = use exterrnal created data, (data, {})
        auto pitch_tensor = torch::from_blob(pitch, {1, buffer_size, 1});
        //std::cout << "TORCH tiene questo pitch tensor" << pitch_tensor << std::endl;
        auto loudness_tensor = torch::from_blob(loudness, {1, buffer_size, 1});
        //std::cout << "TORCH tiene questo loudness tensor" << loudness_tensor << std::endl;

        pitch_tensor = pitch_tensor.to(DEVICE);
        loudness_tensor = loudness_tensor.to(DEVICE);
        std::vector<torch::jit::IValue> inputs = {pitch_tensor, loudness_tensor};
        //std::cout << "Tensor in input -> " << inputs << std::endl;

        //QUA SI ROMPE TUTTO!!!!!!!!!!!!!!!!!! Perchè probabilmente in pure data riceve valori mappati diversamente
        //auto out_tensor = m_scripted_model.forward(inputs).toTensor();
        at::Tensor out_tensor = m_scripted_model.forward(inputs).toTensor();
        //std::cout << "Tensor in output ->  " << out_tensor << std::endl;
        out_tensor = out_tensor.to(DEVICE);

        auto out = out_tensor.contiguous().data_ptr<float>();
        //std::cout << "Torch array di output: "<< *out << std::endl;
        memcpy(out_buffer, out, buffer_size * sizeof(float));
    }
    else {
        std::cout << "Model not loaded. " << std::endl;
    }
}

