llvm_multisource(Fujitsu-Fortran-1071_0011)
set_property(TARGET Fujitsu-Fortran-1071_0011 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp;-Wl,-z,execstack")
set_property(TARGET Fujitsu-Fortran-1071_0011 APPEND PROPERTY LINK_OPTIONS "-fopenmp;-Wl,-z,execstack")
