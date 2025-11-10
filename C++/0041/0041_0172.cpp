#include <iostream>

struct S{
  static int sx;
  int x;
};


int main(void){

  
  std::cout << sizeof(S::sx) << std::endl;

  
  std::cout << sizeof(S::x) << std::endl;

  return 0;
}
