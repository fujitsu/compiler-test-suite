#include <iostream>
#include <cstdint>

int main(void){

#if defined(INT_LEAST8_MIN) && defined(INT_LEAST8_MAX) &&   \
  defined(INT_LEAST16_MIN) && defined(INT_LEAST16_MAX) &&   \
  defined(INT_LEAST32_MIN) && defined(INT_LEAST32_MAX) &&   \
  defined(INT_LEAST64_MIN) && defined(INT_LEAST64_MAX) 
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif
    
  return 0;
}
