llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(SOURCE 0163_0048.c APPEND PROPERTY COMPILE_OPTIONS "-O0")
set_property(TARGET Fujitsu-C-0163_0048 APPEND PROPERTY LINK_OPTIONS "-O0")
