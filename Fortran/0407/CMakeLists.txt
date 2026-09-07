set(openmp_tests
  0407_0002
  0407_0003
  0407_0004
  0407_0005
  0407_0006
  0407_0007
  0407_0008
  0407_0009
  0407_0010
  0407_0011
  0407_0012
  0407_0013
  0407_0014
  0407_0015
  0407_0016
  0407_0017
  0407_0020
  0407_0021
  0407_0022
  0407_0023
  0407_0025
  0407_0026
  0407_0027
  0407_0028
  0407_0029
  0407_0030
  0407_0031
  0407_0032
  0407_0033
  0407_0034
  0407_0035
  0407_0036
  0407_0037
  0407_0038
  0407_0039
  0407_0040
  0407_0041
  0407_0042
  0407_0043
  0407_0044
  0407_0045
  0407_0046
  0407_0047
  0407_0048
  0407_0064
  0407_0065
  0407_0066
  0407_0067
)
llvm_singlesource_compile_only_file(0407_0002.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0407_0003.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0407_0004.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0407_0009.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0407_0015.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0407_0020.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0407_0026.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
