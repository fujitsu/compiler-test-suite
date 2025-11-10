llvm_multisource(Fujitsu-C++-0048_0011)
set_property(TARGET Fujitsu-C++-0048_0011 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C++-0048_0011 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
