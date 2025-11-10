llvm_multisource_compile_only(Fujitsu-C++-0048_0129)
set_property(TARGET Fujitsu-C++-0048_0129 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char;-std=c++03")
set_property(TARGET Fujitsu-C++-0048_0129 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
