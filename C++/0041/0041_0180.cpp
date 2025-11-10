#include <iostream>

constexpr unsigned long long
operator "" _power(unsigned long long val){
  return val * val;
}

int main(void){

  static_assert(4_power == 16, "4_power is not 16");

  std::cout << "ok" << std::endl;

  return 0;
}
