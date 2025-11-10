#include <iostream>
#include <cstdint>

int main(void){

#if defined(UINT8_MAX) && \
  defined(UINT16_MAX) &&  \
  defined(UINT32_MAX) &&  \
  defined(UINT64_MAX) 
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif
    
  return 0;
}
