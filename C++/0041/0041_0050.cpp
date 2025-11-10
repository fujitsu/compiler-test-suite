#include <iostream>

class X{
};

union A{
  X x;
};

int main(void){
  A a;

  std::cout << "ok" << std::endl;

  return 0;
}
