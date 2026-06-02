llvm_multisource(Fujitsu-C-0200_0001)
set_property(TARGET Fujitsu-C-0200_0001 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp;-mcmodel=small;-fPIC")
set_property(TARGET Fujitsu-C-0200_0001 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
