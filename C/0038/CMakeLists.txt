llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(SOURCE 0038_0000.c APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-C-0038_0000 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
