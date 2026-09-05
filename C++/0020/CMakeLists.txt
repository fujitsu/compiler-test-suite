llvm_singlesource_fujitsu(PREFIX "Fujitsu-C++-")
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(TARGET Fujitsu-C++-0020_0068 APPEND PROPERTY LINK_LIBRARIES "pthread")
endif()
