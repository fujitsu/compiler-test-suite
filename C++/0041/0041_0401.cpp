#include <iostream>
#include <cstdint>

constexpr int n = 10;

int main(void){
  
  static_assert(n == UINT8_C(10), "ng");
  static_assert(n == UINT16_C(10), "ng");
  static_assert(n == UINT32_C(10), "ng");
  static_assert(n == UINT64_C(10), "ng");
  static_assert(n == UINTMAX_C(10), "ng");

  std::cout << "ok" << std::endl;

  return 0;
}
