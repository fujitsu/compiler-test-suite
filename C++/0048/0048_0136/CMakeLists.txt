llvm_multisource_compile_only(Fujitsu-C++-0048_0136)
set_property(TARGET Fujitsu-C++-0048_0136 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0136 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
