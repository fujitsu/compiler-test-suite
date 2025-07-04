llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0657_0002.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0657_0002 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
