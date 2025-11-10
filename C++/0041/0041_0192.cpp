#include <iostream>

class X{
  X(){ } 
  ~X(){ }
};

union A{
  X x;
  
  A(){ }
  ~A(){ }
};


int main(void){
  A test;

  std::cout << "ok" << std::endl;

  return 0;
}
