file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_directory(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
