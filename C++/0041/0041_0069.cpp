#include <iostream>

class X{
public:
  X(){
    std::cout << __func__ << std::endl;
  }

  void func(void){
    std::cout << __func__ << std::endl;
  }
};

int main(void){
  X a;

  a.func();

  return 0;
}
