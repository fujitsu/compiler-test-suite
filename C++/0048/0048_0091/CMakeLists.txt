llvm_multisource(Fujitsu-C++-0048_0091)
set_property(TARGET Fujitsu-C++-0048_0091 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0091 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
