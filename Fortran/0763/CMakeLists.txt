set(openmp_tests
  0763_0001
  0763_0002
  0763_0003
  0763_0004
  0763_0005
  0763_0006
  0763_0007
  0763_0008
  0763_0009
  0763_0010
  0763_0011
  0763_0012
  0763_0013
)
llvm_singlesource_compile_only_directory(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
