set(openmp_tests
  0005_0036
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(SOURCE 0005_0033.c APPEND PROPERTY COMPILE_OPTIONS "-std=c17")
set_property(SOURCE 0005_0058.c APPEND PROPERTY COMPILE_OPTIONS "-fno-finite-math-only;-fno-cx-limited-range;-fno-unsafe-math-optimizations")
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(TARGET Fujitsu-C-0005_0054 APPEND PROPERTY LINK_LIBRARIES "m")
  set_property(TARGET Fujitsu-C-0005_0055 APPEND PROPERTY LINK_LIBRARIES "m")
  set_property(SOURCE 0005_0062.c APPEND PROPERTY COMPILE_OPTIONS "-std=c11")
endif()
