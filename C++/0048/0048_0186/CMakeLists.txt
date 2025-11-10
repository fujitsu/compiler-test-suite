llvm_multisource_compile_only(Fujitsu-C++-0048_0186)
set_property(TARGET Fujitsu-C++-0048_0186 APPEND PROPERTY COMPILE_OPTIONS "-flto;-std=c++14;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0186 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
