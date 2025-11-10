llvm_singlesource_fujitsu(PREFIX "Fujitsu-C-")
set_property(SOURCE 0011_0078.c APPEND PROPERTY COMPILE_OPTIONS "-Wno-incompatible-pointer-types")
set_property(SOURCE 0011_0188.c APPEND PROPERTY COMPILE_OPTIONS "-Wno-deprecated-non-prototype")
set_property(SOURCE 0011_0288.c APPEND PROPERTY COMPILE_OPTIONS "-Wno-pointer-to-int-cast")
