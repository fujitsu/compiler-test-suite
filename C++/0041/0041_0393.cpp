#include <iostream>
#include <cstdint>

int main(void){

#if defined(UINT_FAST8_MAX) &&				    \
  defined(UINT_FAST16_MAX) &&				    \
  defined(UINT_FAST32_MAX) &&				    \
  defined(UINT_FAST64_MAX) 
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif
    
  return 0;
}
