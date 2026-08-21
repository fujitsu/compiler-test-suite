if(NOT TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  return()
endif()
llvm_multisource(Fujitsu-C-0199_0829)
