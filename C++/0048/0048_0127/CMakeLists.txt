llvm_multisource(Fujitsu-C++-0048_0127)
set_property(TARGET Fujitsu-C++-0048_0127 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0127 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
