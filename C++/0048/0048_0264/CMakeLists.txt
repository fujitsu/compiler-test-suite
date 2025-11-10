llvm_multisource(Fujitsu-C++-0048_0264)
set_property(TARGET Fujitsu-C++-0048_0264 APPEND PROPERTY COMPILE_OPTIONS "-flto;-fsigned-char")
set_property(TARGET Fujitsu-C++-0048_0264 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
