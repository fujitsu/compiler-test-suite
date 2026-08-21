set(openmp_tests
  0377_0129
  0377_0131
  0377_0132
  0377_0133
  0377_0134
  0377_0135
  0377_0136
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0377_0112.f03 APPEND PROPERTY COMPILE_OPTIONS "-fxor-operator")
endif()
