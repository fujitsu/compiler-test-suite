llvm_multisource(Fujitsu-C++-0048_0227)
set_property(TARGET Fujitsu-C++-0048_0227 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0227 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
