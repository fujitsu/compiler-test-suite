#include <iostream>
#include <cstdint>

int main(void){
  uintmax_t a;

  if(sizeof(a) >= 8){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
