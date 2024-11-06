package fpu_parameters;

  // APU interface
    parameter FPU_OTHERS_LAT = 0;
    parameter FPU_ADDMUL_LAT=0;
    parameter APU_NARGS_CPU = 3;
    parameter APU_WOP_CPU = 6;
    parameter APU_NDSFLAGS_CPU = 15;
    parameter APU_NUSFLAGS_CPU = 5;
    parameter C_RM = 3;
    parameter C_FLEN = 32;
    parameter C_XFVEC = 0;
    parameter C_RVF = 1;
    parameter C_RVD = 0;
    parameter C_XF16 = 0;
    parameter C_XF8 = 0;
    parameter C_XF16ALT = 0;
    parameter C_LAT_FP64 = 0;
    parameter C_LAT_FP16 = 0;
    parameter C_LAT_FP8 = 0;
    parameter C_LAT_FP16ALT = 0;
    parameter C_LAT_DIVSQRT = 1;

endpackage  // cv32e40p_apu_core_pkg
