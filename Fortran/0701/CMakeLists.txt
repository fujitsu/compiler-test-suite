llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0701_0009.f90 APPEND PROPERTY COMPILE_OPTIONS "-ffixed-form")
