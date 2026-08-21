set(openmp_tests
  0435_0000
  0435_0001
  0435_0002
  0435_0003
  0435_0004
  0435_0005
  0435_0006
  0435_0007
  0435_0008
  0435_0009
  0435_0010
  0435_0011
  0435_0012
)
llvm_singlesource_compile_only_file(0435_0012.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
