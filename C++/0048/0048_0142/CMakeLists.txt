llvm_multisource_compile_only(Fujitsu-C++-0048_0142)
set_property(TARGET Fujitsu-C++-0048_0142 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0142 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
