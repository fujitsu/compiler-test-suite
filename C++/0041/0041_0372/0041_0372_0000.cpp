#include <iostream>
#include <cstdint>

extern int8_t func(void);

int main(void){

  if(func() == 10){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
