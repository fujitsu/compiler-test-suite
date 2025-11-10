llvm_singlesource_compile_only_file(0127_0001.c PREFIX "Fujitsu-C-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(SOURCE 0127_0004.c APPEND PROPERTY COMPILE_OPTIONS "-Wno-incompatible-pointer-types")
