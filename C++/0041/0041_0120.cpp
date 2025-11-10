#include <iostream>

int main(void){

  static_assert( sizeof(int) == 4, "int is not 4byte" );
  static_assert( sizeof(double) >= 8, "not enough" );

  std::cout << "ok" << std::endl;

  return 0;
}
