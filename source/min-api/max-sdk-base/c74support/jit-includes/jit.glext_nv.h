#ifndef __glext_nv_h_
#define __glext_nv_h_

#ifdef __cplusplus
extern "C" {
#endif

#ifndef GL_NV_half_float
#define GL_NV_half_float
#endif
typedef unsigned short GLhalfNV;

#define GL_PIXEL_PACK_BUFFER_EXT   0x88EB
#define GL_PIXEL_UNPACK_BUFFER_EXT 0x88EC

#define GL_VERTEX_PROGRAM_NV 0x8620
#define GL_FRAGMENT_PROGRAM_NV 0x8870

#define GL_PROGRAM_ERROR_POSITION_NV 0x864B

#define GL_PROGRAM_ERROR_STRING_NV 0x8874

#define GL_TEXTURE_RECTANGLE_NV 0x84F5

#define GL_HALF_FLOAT_NV 0x140B

#define GL_FLOAT_R_NV                     0x8880
#define GL_FLOAT_RG_NV                    0x8881
#define GL_FLOAT_RGB_NV                   0x8882
#define GL_FLOAT_RGBA_NV                  0x8883
#define GL_FLOAT_R16_NV                   0x8884
#define GL_FLOAT_R32_NV                   0x8885
#define GL_FLOAT_RG16_NV                  0x8886
#define GL_FLOAT_RG32_NV                  0x8887
#define GL_FLOAT_RGB16_NV                 0x8888
#define GL_FLOAT_RGB32_NV                 0x8889
#define GL_FLOAT_RGBA16_NV                0x888A
#define GL_FLOAT_RGBA32_NV                0x888B
#define GL_TEXTURE_FLOAT_COMPONENTS_NV    0x888C
#define GL_FLOAT_CLEAR_COLOR_VALUE_NV     0x888D
#define GL_FLOAT_RGBA_MODE_NV             0x888E

#ifdef __cplusplus
}
#endif

#endif
