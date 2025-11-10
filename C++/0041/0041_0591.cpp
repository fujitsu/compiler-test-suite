#include <iostream>
#include <utility>

struct X{
  X() = default;
  ~X() = default;

  X& operator=(const X& x_){
    std::cout << "ng: copy operator" << std::endl;
    return *this;
  }

  X& operator=(X&& x_){
    std::cout << "ok" << std::endl;
    return *this;
  }
};

int main(void){
  X a;
  X b;

  a = std::move(b);

  return 0;
}
