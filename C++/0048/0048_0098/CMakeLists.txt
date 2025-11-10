llvm_multisource(Fujitsu-C++-0048_0098)
set_property(TARGET Fujitsu-C++-0048_0098 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C++-0048_0098 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
