llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0076_0000.c APPEND PROPERTY COMPILE_OPTIONS "-fsigned-char")
  set_property(SOURCE 0076_0002.c APPEND PROPERTY COMPILE_OPTIONS "-fsigned-char")
  
  if(CMAKE_C_COMPILER_ID STREQUAL "GNU")
    set_property(SOURCE 0076_0009.c APPEND PROPERTY COMPILE_OPTIONS "-fno-finite-math-only")
  endif()
endif()
