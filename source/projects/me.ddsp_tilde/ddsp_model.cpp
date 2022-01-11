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
        m_scripted_model = torch::jit::load(path);
        m_scripted_model.eval();
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
        auto pitch_tensor = torch::from_blob(pitch, {1, buffer_size, 1});
        auto loudness_tensor = torch::from_blob(loudness, {1, buffer_size, 1});

        pitch_tensor = pitch_tensor.to(DEVICE);
        loudness_tensor = loudness_tensor.to(DEVICE);

        std::vector<torch::jit::IValue> inputs = {pitch_tensor, loudness_tensor};

        auto out_tensor = m_scripted_model.forward(inputs).toTensor();
        out_tensor = out_tensor.to(CPU);

        auto out = out_tensor.contiguous().data_ptr<float>();

        memcpy(out_buffer, out, buffer_size * sizeof(float));
    }
}

