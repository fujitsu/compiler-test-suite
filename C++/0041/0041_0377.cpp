#include <iostream>
#include <cstdint>

int main(void){
  int_least8_t a;
  int_least16_t b;
  int_least32_t c;
  int_least64_t d;    
  
  if(sizeof(a) >= 1 && sizeof(b) >= 2 &&
     sizeof(c) >= 4 && sizeof(d) >= 8){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
