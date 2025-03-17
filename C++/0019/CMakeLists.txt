llvm_singlesource(PREFIX "Fujitsu-C++-")
set_property(SOURCE 0019_0106.cpp APPEND PROPERTY COMPILE_OPTIONS "-fsized-deallocation;-fno-builtin")
set_property(SOURCE 0019_0107.cpp APPEND PROPERTY COMPILE_OPTIONS "-fno-builtin")
