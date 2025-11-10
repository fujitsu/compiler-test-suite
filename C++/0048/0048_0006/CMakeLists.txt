llvm_multisource(Fujitsu-C++-0048_0006)
set_property(TARGET Fujitsu-C++-0048_0006 APPEND PROPERTY COMPILE_OPTIONS "-O1;-flto")
set_property(TARGET Fujitsu-C++-0048_0006 APPEND PROPERTY LINK_OPTIONS "-O1;-flto;-fuse-ld=lld")
