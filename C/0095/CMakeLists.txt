llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(SOURCE 0095_0019.c APPEND PROPERTY COMPILE_OPTIONS "-fsigned-char")
set_property(SOURCE 0095_0039.c APPEND PROPERTY COMPILE_OPTIONS "-O0")
set_property(TARGET Fujitsu-C-0095_0039 APPEND PROPERTY LINK_OPTIONS "-O0")
