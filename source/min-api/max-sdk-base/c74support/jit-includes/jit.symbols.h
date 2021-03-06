/* 
	jit.symbols.h

	Copyright 2001-2005 - Cycling '74
	Joshua Kit Clayton jkc@cycling74.com
		
*/

#ifndef __JIT_SYMBOLS_H__
#define __JIT_SYMBOLS_H__

#include "jit.common.h"
#include "jit.platform.h"


JIT_EX_DATA t_symbol *_jit_sym_nothing;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_new;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_free;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_classname;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getname;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getmethod;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_get;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_set;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_register;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_char;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_long;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_float32;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_float64;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_symbol;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_pointer;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_object;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_atom;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_list;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_type;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_dim;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_planecount;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_val;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_plane;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_cell;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_jit_matrix;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_class_jit_matrix;                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_togworld;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_fromgworld;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_frommatrix;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_class_jit_attribute;                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_jit_attribute;                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_jit_attr_offset;                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_jit_attr_offset_array;                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_rebuilding;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_modified;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_lock;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_setinfo;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_setinfo_ex;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getinfo;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_data;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getdata;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_outputmatrix;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_clear;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_clear_custom;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_err_calculate;                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_max_jit_classex;                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_setall;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_chuck;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getsize;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getindex;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_objptr2index;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_append;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_insertindex;                          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_deleteindex;                          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_chuckindex;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_makearray;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_reverse;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_rotate;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_shuffle;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_swap;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_findfirst;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_findall;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_methodall;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_methodindex;                          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_sort;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_matrix_calc;                          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_genframe;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_filter;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_jit_mop;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_newcopy;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_jit_linklist;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_inputcount;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_outputcount;                          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getinput;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getoutput;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getinputlist;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getoutputlist;                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_ioname;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_matrixname;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_outputmode;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_matrix;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getmatrix;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_typelink;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_dimlink;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_planelink;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_restrict_type;                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_restrict_planecount;                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_restrict_dim;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_special;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getspecial;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_adapt;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_decorator;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_frommatrix_trunc;                     ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_ioproc;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_getioproc;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_name;                                 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_types;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_minplanecount;                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_maxplanecount;                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_mindimcount;                          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_maxdimcount;                          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_mindim;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_maxdim;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_points;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_point_sprite;                      ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_lines;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_line_strip;                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_line_loop;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_triangles;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_tri_strip;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_tri_fan;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_quads;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_quad_strip;                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_polygon;                           ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_tri_grid;                          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gl_quad_grid;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_err_lockout_stack;                    ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_class_jit_namespace;                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_jit_namespace;                        ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_findsize;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_attach;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_detach;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_add;                                  ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_replace;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_gettype;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_ob_sym;                               ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_resolve_name;                         ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_resolve_raw;                          ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_notifyall;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_block;                                ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_unblock;                              ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_position;                             ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_rotatexyz;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_scale;								 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_quat;								 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_direction;                            ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_lookat;								 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_anim;								 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_bounds;								 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_boundcalc;							 ///< cached #t_symbol @ingroup jitter
JIT_EX_DATA t_symbol *_jit_sym_calcbounds;							 ///< cached #t_symbol @ingroup jitter

#endif // __JIT_SYMBOLS_H__
