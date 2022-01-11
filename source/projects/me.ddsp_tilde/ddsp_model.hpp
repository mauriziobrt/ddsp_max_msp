//
//  ddsp_model.hpp
//  me.ddsp_tilde
//
//  Created by Maurizio Berta on 11/01/2022.
//

#pragma once
#include <torch/script.h>
#include <torch/torch.h>
#include <string>

#define DEVICE torch::kCPU
#define CPU torch::kCPU

class DDSPModel
{
private:
    torch::jit::script::Module m_scripted_model;
    int m_loaded;

public:
    DDSPModel();
    int load(std::string path);
    void perform(float *pitch, float *loudness, float *out_buffer, int buffer_size);
};
