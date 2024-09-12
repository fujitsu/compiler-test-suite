file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0642_0028.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
