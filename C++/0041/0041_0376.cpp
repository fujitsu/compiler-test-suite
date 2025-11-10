#include <iostream>
#include <cstdint>

int main(void){
  int_fast8_t a;
  int_fast16_t b;
  int_fast32_t c;
  int_fast64_t d;    

  if(sizeof(a) >= 1 && sizeof(b) >= 2 &&
     sizeof(c) >= 4 && sizeof(d) >= 8){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
