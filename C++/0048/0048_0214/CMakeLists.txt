llvm_multisource(Fujitsu-C++-0048_0214)
set_property(TARGET Fujitsu-C++-0048_0214 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0214 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
