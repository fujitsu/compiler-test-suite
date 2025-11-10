#include <iostream>

class A;
typedef A At;

class X{
  friend At; 
  friend class D; 
};

template<typename T> class R{
  friend T;
  int m;
};

int main(void){
  X x;

  std::cout << "ok" << std::endl;

  return 0;
}


