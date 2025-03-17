llvm_singlesource(PREFIX "Fujitsu-C++-")
set_property(SOURCE 0031_0012.cpp APPEND PROPERTY COMPILE_OPTIONS "-fopenmp;-fopenmp")
set_property(TARGET Fujitsu-C++-0031_0012 APPEND PROPERTY LINK_OPTIONS "-fopenmp;-fopenmp")
