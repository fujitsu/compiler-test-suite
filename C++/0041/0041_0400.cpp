#include <iostream>
#include <cstdint>

int main(void){

#if defined(UINT8_C) && defined(UINT16_C) && \
  defined(UINT32_C) && defined(UINT64_C) && \
  defined(UINTMAX_C)
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif

  return 0;
}
