llvm_multisource(Fujitsu-C++-0046_0020)
set_property(TARGET Fujitsu-C++-0046_0020 APPEND PROPERTY INCLUDE_DIRECTORIES "${CMAKE_CURRENT_SOURCE_DIR}/../include")
set_property(TARGET Fujitsu-C++-0046_0020 APPEND PROPERTY COMPILE_OPTIONS "-std=c++17;-stdlib=libstdc++")
set_property(TARGET Fujitsu-C++-0046_0020 APPEND PROPERTY LINK_OPTIONS "-stdlib=libstdc++")
