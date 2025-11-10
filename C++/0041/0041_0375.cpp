#include <iostream>
#include <cstdint>

int main(void){
  int8_t a;
  int16_t b;
  int32_t c;
  int64_t d;

  if(sizeof(a) == 1 && sizeof(b) == 2 &&
     sizeof(c) == 4 && sizeof(d) == 8){    
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
