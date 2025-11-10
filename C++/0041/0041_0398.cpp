#include <iostream>
#include <cstdint>

int main(void){

#if defined(INT8_C) && defined(INT16_C) && \
  defined(INT32_C) && defined(INT64_C) && \
  defined(INTMAX_C)
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif

  return 0;
}
