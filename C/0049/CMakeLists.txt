llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(SOURCE 0049_0002.c APPEND PROPERTY COMPILE_OPTIONS "-fsigned-char")
set_property(SOURCE 0049_0003.c APPEND PROPERTY COMPILE_OPTIONS "-Wno-incompatible-pointer-types")
