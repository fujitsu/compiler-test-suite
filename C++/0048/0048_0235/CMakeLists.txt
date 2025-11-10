llvm_multisource(Fujitsu-C++-0048_0235)
set_property(TARGET Fujitsu-C++-0048_0235 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0235 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
