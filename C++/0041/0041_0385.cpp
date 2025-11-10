#include <iostream>
#include <cstdint>

int main(void){

#if defined(INT8_MIN) && defined(INT8_MAX) &&	\
  defined(INT16_MIN) && defined(INT16_MAX) &&   \
  defined(INT32_MIN) && defined(INT32_MAX) &&   \
  defined(INT64_MIN) && defined(INT64_MAX) 
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif
    
  return 0;
}
