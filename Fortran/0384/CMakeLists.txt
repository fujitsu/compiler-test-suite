file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0384_0006.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
