#include <iostream>
#include <cstdint>

int main(void){

#if defined(__STDC_CONSTANT_MACROS) || defined(__clang__)
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif

  return 0;
}
