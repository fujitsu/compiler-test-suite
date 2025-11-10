llvm_multisource(Fujitsu-C-0181_0107)
set_property(TARGET Fujitsu-C-0181_0107 APPEND PROPERTY COMPILE_OPTIONS "-O;-flto;-fsigned-char")
set_property(TARGET Fujitsu-C-0181_0107 APPEND PROPERTY LINK_OPTIONS "-O;-flto;-fuse-ld=lld")
