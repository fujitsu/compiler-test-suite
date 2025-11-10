#include <iostream>
#include <cstdint>

int main(void){
  uint8_t a;
  uint16_t b;
  uint32_t c;
  uint64_t d;

  if(sizeof(a) == 1 && sizeof(b) == 2 &&
     sizeof(c) == 4 && sizeof(d) == 8){    
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
