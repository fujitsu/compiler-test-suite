#include <iostream>
#include <cstdint>

int main(void){
  int n = 10;

  
  std::cout << INT8_C(n) << std::endl;
  std::cout << INT16_C(n) << std::endl;
  std::cout << INT32_C(n) << std::endl;
  std::cout << INT64_C(10) << std::endl;
  std::cout << INTMAX_C(10) << std::endl;

  
  std::cout << UINT8_C(n) << std::endl;
  std::cout << UINT16_C(n) << std::endl;
  std::cout << UINT32_C(10) << std::endl;
  std::cout << UINT64_C(10) << std::endl;
  std::cout << UINTMAX_C(10) << std::endl;

  return 0;
}
