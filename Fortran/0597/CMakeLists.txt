set(openmp_tests
  0597_0000
  0597_0001
  0597_0002
  0597_0003
  0597_0004
  0597_0005
  0597_0006
  0597_0007
  0597_0008
  0597_0009
  0597_0010
  0597_0011
  0597_0012
  0597_0013
  0597_0014
  0597_0015
  0597_0016
  0597_0017
  0597_0018
  0597_0019
  0597_0020
  0597_0021
  0597_0022
  0597_0023
  0597_0024
  0597_0025
  0597_0026
  0597_0027
  0597_0028
  0597_0031
  0597_0032
)
llvm_singlesource_compile_only_file(0597_0002.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0597_0004.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0597_0006.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0597_0010.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
