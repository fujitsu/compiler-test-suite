#include <iostream>
#include <utility>

struct X{
  X(){
    std::cout << "default ctor" << std::endl;
  }
  X(const X& x_){
    std::cout << "copy ctor" << std::endl;
  }
  X& operator=(const X& x_){
    std::cout << "copy operator" << std::endl;
    return *this;
  }
  X(X&& x_){
    std::cout << "move ctor" << std::endl;
  }
  X& operator=(X&& x_){
    std::cout << "move operator" << std::endl;
    return *this;
  }
};

int main(void){
  X a;
  X b = std::move(a);

  a = std::move(b);

  return 0;
}
