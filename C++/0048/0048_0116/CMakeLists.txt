llvm_multisource(Fujitsu-C++-0048_0116)
set_property(TARGET Fujitsu-C++-0048_0116 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0116 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
