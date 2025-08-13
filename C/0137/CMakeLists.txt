llvm_singlesource_compile_only_file(0137_0121.c PREFIX "Fujitsu-C-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(SOURCE 0137_0036.c APPEND PROPERTY COMPILE_OPTIONS "-fno-fast-math")
set_property(TARGET Fujitsu-C-0137_0036 APPEND PROPERTY LINK_OPTIONS "-fno-fast-math")
