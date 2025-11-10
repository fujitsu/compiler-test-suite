#include <iostream>
#include <cstdint>

int main(void){

#if defined(UINTMAX_MAX)
  std::cout << "ok" << std::endl;
#else
  std::cout << "ng" << std::endl;
#endif
    
  return 0;
}
