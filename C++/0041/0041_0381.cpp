#include <iostream>
#include <cstdint>

int main(void){
  uint_fast8_t a;
  uint_fast16_t b;
  uint_fast32_t c;
  uint_fast64_t d;    

  if(sizeof(a) >= 1 && sizeof(b) >= 2 &&
     sizeof(c) >= 4 && sizeof(d) >= 8){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
