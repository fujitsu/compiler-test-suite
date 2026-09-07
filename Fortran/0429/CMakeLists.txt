set(openmp_tests ALL)
llvm_singlesource_compile_only_file(0429_0049.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
