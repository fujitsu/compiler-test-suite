llvm_multisource_compile_only(Fujitsu-C++-0048_0176)
set_property(TARGET Fujitsu-C++-0048_0176 APPEND PROPERTY COMPILE_OPTIONS "-flto;-std=c++11;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0176 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
