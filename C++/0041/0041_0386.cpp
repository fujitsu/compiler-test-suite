#include <iostream>
#include <cstdint>

int main(void){

#if defined(INT_FAST8_MIN) && defined(INT_FAST8_MAX) &&	  \
  defined(INT_FAST16_MIN) && defined(INT_FAST16_MAX) &&   \
  defined(INT_FAST32_MIN) && defined(INT_FAST32_MAX) &&   \
  defined(INT_FAST64_MIN) && defined(INT_FAST64_MAX) 
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif
    
  return 0;
}
