#include <iostream>

int main(void){
  constexpr int x = 1;
  static_assert(x == 1, "x is not 1");

  constexpr auto y = x + 1;
  static_assert(y == 2, "x is not 2");

  constexpr auto z = x + y;
  static_assert(z == 3, "z is not 3");

  
  

  std::cout << "ok" << std::endl;

  return 0;
}
