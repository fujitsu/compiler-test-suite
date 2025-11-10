#include <iostream>
#include <cstdint>

int main(void){
  int8_t x_8;
  int16_t x_16;
  int32_t x_32;
  int64_t x_64;
  
  std::cout << sizeof(x_8) << std::endl;
  std::cout << sizeof(x_16) << std::endl;
  std::cout << sizeof(x_32) << std::endl;
  std::cout << sizeof(x_64) << std::endl;
  

  int_least8_t z_8;
  int_least16_t z_16;
  int_least32_t z_32;
  int_least64_t z_64;
  
  std::cout << sizeof(z_8) << std::endl;
  std::cout << sizeof(z_16) << std::endl;
  std::cout << sizeof(z_32) << std::endl;
  std::cout << sizeof(z_64) << std::endl;

  int_fast8_t y_8;
  int_fast16_t y_16;
  int_fast32_t y_32;
  int_fast64_t y_64;
  
  std::cout << sizeof(y_8) << std::endl;
  std::cout << sizeof(y_16) << std::endl;
  std::cout << sizeof(y_32) << std::endl;
  std::cout << sizeof(y_64) << std::endl;
  
  intmax_t a;
  std::cout << sizeof(a) << std::endl;

  intptr_t b;

  std::cout << "ok" << std::endl;

  return 0;
}
