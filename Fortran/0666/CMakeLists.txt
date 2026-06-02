llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0666_0006.f APPEND PROPERTY COMPILE_OPTIONS "-fxor-operator")
