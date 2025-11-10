#include <iostream>
#include <cstdint>

constexpr int n = 10;

int main(void){
  
  static_assert(n == INT8_C(10), "ng");
  static_assert(n == INT16_C(10), "ng");
  static_assert(n == INT32_C(10), "ng");
  static_assert(n == INT64_C(10), "ng");
  static_assert(n == INTMAX_C(10), "ng");

  std::cout << "ok" << std::endl;

  return 0;
}
