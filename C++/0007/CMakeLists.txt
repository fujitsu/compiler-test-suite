llvm_singlesource(PREFIX "Fujitsu-C++-")
set_property(SOURCE 0007_0000.cpp APPEND PROPERTY COMPILE_OPTIONS "-std=c++11;-stdlib=libc++")
set_property(TARGET Fujitsu-C++-0007_0000 APPEND PROPERTY LINK_OPTIONS "-lpthread")
