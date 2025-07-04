llvm_singlesource_compile_only_file(0135_0003.c PREFIX "Fujitsu-C-")
llvm_singlesource_compile_only_file(0135_0006.c PREFIX "Fujitsu-C-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(TARGET Fujitsu-C-0135_0013 APPEND PROPERTY LINK_OPTIONS "-lm")
