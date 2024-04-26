llvm_singlesource_compile_only_file(0347_0006.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0347_0432.f APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
