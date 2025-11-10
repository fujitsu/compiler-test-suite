#include <iostream>
#include <cstdint>

int main(void){

#if defined(UINT_LEAST8_MAX) &&   \
  defined(UINT_LEAST16_MAX) &&				      \
  defined(UINT_LEAST32_MAX) &&				      \
  defined(UINT_LEAST64_MAX) 
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif
    
  return 0;
}
