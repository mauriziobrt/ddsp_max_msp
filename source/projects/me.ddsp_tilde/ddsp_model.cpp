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

//add choice cpu or gpu, if cuda is available 

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
//        std::cout << "The pitch value is: " << *pitch << std::endl;
//        std::cout << "The loudness value is: " << *loudness << std::endl;
        //auto options =torch::TensorOptions().dtype(torch::kFloat64);
        //from_blob = use exterrnal created data, (data, {})
        auto pitch_tensor = torch::from_blob(pitch, {1, buffer_size, 1});
        //std::cout << "TORCH tiene questo pitch tensor" << pitch_tensor << std::endl;
        auto loudness_tensor = torch::from_blob(loudness, {1, buffer_size, 1});
        //std::cout << "TORCH tiene questo loudness tensor" << loudness_tensor << std::endl;
        //std::cout<< "Size in bytes of loudness tensor "<< loudness_tensor.element_size() << std::endl;
        pitch_tensor = pitch_tensor.to(DEVICE);
        loudness_tensor = loudness_tensor.to(DEVICE);
        std::vector<torch::jit::IValue> inputs = {pitch_tensor, loudness_tensor};
        
        //std::cout <<"Ivalue 2 " << inputs << "\n";
        //std::cout << "Tensor in input -> " << inputs << std::endl;
        
        //ok allora ricevo roba a dimensione 8 bytes, però il modello non la capisce e dice che non va bene
        //std::cout << "The module " << *m_scripted_model.type() << "\n";
        
        auto out_tensor = m_scripted_model.forward(inputs).toTensor();
        out_tensor = out_tensor.to(DEVICE);
        //std::cout<< "Size in bytes of out tensor "<< out_tensor.element_size() << std::endl;


        //returns address of first element of tensor
        auto out = out_tensor.contiguous().data_ptr<float>();

        //auto gino = out_tensor.item<double>();
        //std::cout << gino << std::endl;
        //auto* out1 = static_cast<double*>(out);

        //forse devo sapere la size di out per capire dove inizia e finisce
        //smette di funzionare appena riceve i valor di pitch e loudness.
        
        
        memcpy(out_buffer, out, buffer_size * sizeof(float));
        //std::copy(out, buffer_size + out , out_buffer);
        //std::cout << "Adesso l'output buffer è uguale a: " << *out_buffer <<std::endl;
    }
    else {
        std::cout << "Model not loaded. " << std::endl;
    }
}

