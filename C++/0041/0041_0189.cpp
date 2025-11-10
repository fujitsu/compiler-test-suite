#include <iostream>

class X{
};

union A{
  int i;
  double j;

  void func(void);

  X x;
};


int main(void){
  A test;

  std::cout << "ok" << std::endl;

  return 0;
}
