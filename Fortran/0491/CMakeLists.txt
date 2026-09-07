set(openmp_tests
  0491_0004
  0491_0027
  0491_0028
  0491_0054
  0491_0055
  0491_0058
  0491_0075
  0491_0118
  0491_0119
  0491_0120
  0491_0121
  0491_0122
  0491_0129
  0491_0130
  0491_0131
  0491_0132
  0491_0133
  0491_0134
  0491_0135
  0491_0136
  0491_0137
  0491_0138
  0491_0139
  0491_0140
  0491_0141
  0491_0142
)
llvm_singlesource_compile_only_file(0491_0054.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0491_0123.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0491_0124.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
