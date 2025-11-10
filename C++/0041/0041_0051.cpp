#include <iostream>

class X{
  X(){
  }

  ~X(){
  }
};

union A{
  X x1;

  A(){
    std::cout << "ok" << std::endl;
  }

  ~A(){
  }
};

int main(void){
  A a;

  return 0;
}
