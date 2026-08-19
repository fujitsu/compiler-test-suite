set(openmp_tests
  0005_0036
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(TARGET Fujitsu-C-0005_0054 APPEND PROPERTY LINK_LIBRARIES "m")
  set_property(TARGET Fujitsu-C-0005_0055 APPEND PROPERTY LINK_LIBRARIES "m")
  set_property(SOURCE 0005_0062.c APPEND PROPERTY COMPILE_OPTIONS "-std=c11")
endif()
