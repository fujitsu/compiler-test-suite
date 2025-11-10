llvm_multisource(Fujitsu-C++-0048_0056)
set_property(TARGET Fujitsu-C++-0048_0056 APPEND PROPERTY COMPILE_OPTIONS "-flto;-std=c++11;-fsigned-char;-Wno-error=parentheses")
set_property(TARGET Fujitsu-C++-0048_0056 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
