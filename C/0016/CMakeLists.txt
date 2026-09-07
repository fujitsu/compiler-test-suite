llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0016_0135.c APPEND PROPERTY COMPILE_OPTIONS "-ffp-contract=off")
endif()
