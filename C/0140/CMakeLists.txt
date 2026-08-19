llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0140_0039.c APPEND PROPERTY COMPILE_OPTIONS "-fno-strict-aliasing")
endif()
