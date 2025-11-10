#include <iostream>
#include <cstdint>
#include <cstdint>
#include <utility>

int main(void){
  int8_t v1 = 10;
  uint8_t v2 = 10;
  
  if(v1 == 10 && 
     std::is_same< decltype(v1), int8_t>::value &&
     v2 == 10 &&
     std::is_same< decltype(v2), uint8_t>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
