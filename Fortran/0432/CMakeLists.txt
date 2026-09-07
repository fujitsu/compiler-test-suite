set(openmp_tests
  0432_0042
  0432_0043
  0432_0044
)
llvm_singlesource_compile_only_file(0432_0014.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0432_0025.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0432_0026.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0432_0027.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0432_0028.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0432_0029.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0432_0030.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
