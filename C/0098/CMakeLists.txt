llvm_singlesource(PREFIX "Fujitsu-C-")
set_property(SOURCE 0098_0003.c APPEND PROPERTY COMPILE_OPTIONS "-ffp-contract=off")
set_property(SOURCE 0098_0051.c APPEND PROPERTY COMPILE_OPTIONS "-O0")
set_property(SOURCE 0098_0079.c APPEND PROPERTY COMPILE_OPTIONS "-funroll-loops")
