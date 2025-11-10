#include <iostream>

int main(void){

  
  

  constexpr int y = 10;
  static_assert( y == 10, "y is constant expression" );

  constexpr auto z = y;
  static_assert( z == 10, "y is constant expression" );

  const auto w = y;
  static_assert( w == 10, "y is constant expression" );

  std::cout << "ok" << std::endl;

  return 0;
}
