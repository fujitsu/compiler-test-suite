#include <iostream>
#include <utility>

struct X{
  X() = default;
  ~X() = default;

  X& operator=(const X& x_){
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
