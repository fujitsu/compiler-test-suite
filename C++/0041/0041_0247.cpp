#include <iostream>
#include <cstdint>

int main(void){
  uint8_t x_8;
  uint16_t x_16;
  uint32_t x_32;
  uint64_t x_64;
  std::cout << sizeof(x_8) << std::endl;
  std::cout << sizeof(x_16) << std::endl;
  std::cout << sizeof(x_32) << std::endl;
  std::cout << sizeof(x_64) << std::endl;

  uint_least8_t z_8;
  uint_least16_t z_16;
  uint_least32_t z_32;
  uint_least64_t z_64;
  std::cout << sizeof(z_8) << std::endl;
  std::cout << sizeof(z_16) << std::endl;
  std::cout << sizeof(z_32) << std::endl;
  std::cout << sizeof(z_64) << std::endl;

  uint_fast8_t y_8;
  uint_fast16_t y_16;
  uint_fast32_t y_32;
  uint_fast64_t y_64;
  std::cout << sizeof(y_8) << std::endl;
  std::cout << sizeof(y_16) << std::endl;
  std::cout << sizeof(y_32) << std::endl;
  std::cout << sizeof(y_64) << std::endl;
  
  uintmax_t a;
  std::cout << sizeof(a) << std::endl;

  uintptr_t b;

  std::cout << "ok" << std::endl;

  return 0;
}
