llvm_multisource(Fujitsu-Fortran-1071_0004)
set_property(TARGET Fujitsu-Fortran-1071_0004 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp;-Wl,-z,execstack")
set_property(TARGET Fujitsu-Fortran-1071_0004 APPEND PROPERTY LINK_OPTIONS "-fopenmp;-Wl,-z,execstack")
