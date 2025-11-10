#include <iostream>
#include <cstdint>

int main(void){
  
  
  std::cout << UINT8_MAX << std::endl;
  std::cout << UINT16_MAX << std::endl;
  std::cout << UINT32_MAX << std::endl;
  std::cout << UINT64_MAX << std::endl;

  std::cout << UINT_FAST8_MAX << std::endl;
  std::cout << UINT_FAST16_MAX << std::endl;
  std::cout << UINT_FAST32_MAX << std::endl;
  std::cout << UINT_FAST64_MAX << std::endl;

  std::cout << UINT_LEAST8_MAX << std::endl;
  std::cout << UINT_LEAST16_MAX << std::endl;
  std::cout << UINT_LEAST32_MAX << std::endl;
  std::cout << UINT_LEAST64_MAX << std::endl;

  std::cout << UINTPTR_MAX << std::endl;
  std::cout << UINTMAX_MAX << std::endl;

  return 0;
}
