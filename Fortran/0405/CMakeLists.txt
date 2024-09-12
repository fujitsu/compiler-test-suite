llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0405_0004.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0405_0004 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
