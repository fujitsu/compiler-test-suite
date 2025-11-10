llvm_multisource(Fujitsu-C-0181_0131)
set_property(TARGET Fujitsu-C-0181_0131 APPEND PROPERTY COMPILE_OPTIONS "-O1;-ffast-math;-flto")
set_property(TARGET Fujitsu-C-0181_0131 APPEND PROPERTY LINK_OPTIONS "-O1;-ffast-math;-flto;-fuse-ld=lld")
