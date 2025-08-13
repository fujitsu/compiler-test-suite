llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(SOURCE 0166_0031.c APPEND PROPERTY COMPILE_OPTIONS "-fno-fast-math")
set_property(TARGET Fujitsu-C-0166_0031 APPEND PROPERTY LINK_OPTIONS "-fno-fast-math")
