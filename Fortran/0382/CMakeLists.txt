set(openmp_tests
  0382_0012
  0382_0035
)
llvm_singlesource_compile_only_file(0382_0011.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
