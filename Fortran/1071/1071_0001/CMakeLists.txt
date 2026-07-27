llvm_multisource(Fujitsu-Fortran-1071_0001)
set_property(TARGET Fujitsu-Fortran-1071_0001 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp;-Wl,-z,execstack")
set_property(TARGET Fujitsu-Fortran-1071_0001 APPEND PROPERTY LINK_OPTIONS "-fopenmp;-Wl,-z,execstack")
