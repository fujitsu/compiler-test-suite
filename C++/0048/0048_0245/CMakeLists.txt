llvm_multisource(Fujitsu-C++-0048_0245)
set_property(TARGET Fujitsu-C++-0048_0245 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C++-0048_0245 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
