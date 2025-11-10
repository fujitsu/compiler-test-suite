llvm_multisource(Fujitsu-C++-0046_0001)
set_property(TARGET Fujitsu-C++-0046_0001 APPEND PROPERTY INCLUDE_DIRECTORIES "${CMAKE_CURRENT_SOURCE_DIR}/../include")
set_property(TARGET Fujitsu-C++-0046_0001 APPEND PROPERTY COMPILE_OPTIONS "-std=gnu++17;-stdlib=libstdc++")
set_property(TARGET Fujitsu-C++-0046_0001 APPEND PROPERTY LINK_OPTIONS "-stdlib=libstdc++")
