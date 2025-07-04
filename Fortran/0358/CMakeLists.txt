llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0358_0052.f APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0358_0052 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
