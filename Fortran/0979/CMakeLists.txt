set(openmp_tests
  0979_0054
  0979_0055
  0979_0056
  0979_0057
  0979_0058
  0979_0202
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  llvm_test_data(Fujitsu-Fortran-0979_0350 000.input)
endif()
