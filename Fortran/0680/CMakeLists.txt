llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0680_0049.f APPEND PROPERTY COMPILE_OPTIONS "-ffp-contract=off")
set_property(SOURCE 0680_0065.f APPEND PROPERTY COMPILE_OPTIONS "-ffp-contract=off")
