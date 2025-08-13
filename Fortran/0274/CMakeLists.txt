llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0274_0004.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-fast-math")
set_property(TARGET Fujitsu-Fortran-0274_0004 APPEND PROPERTY LINK_OPTIONS "-fno-fast-math")
