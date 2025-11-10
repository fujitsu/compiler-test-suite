llvm_multisource(Fujitsu-C++-0048_0111)
set_property(TARGET Fujitsu-C++-0048_0111 APPEND PROPERTY COMPILE_OPTIONS "-flto;-std=c++11;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0111 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
