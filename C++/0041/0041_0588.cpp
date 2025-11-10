#include <iostream>
#include <utility>

struct X{
  X() = default;
  ~X() = default;

  X(const X& x_) = delete;

  X(X&& x_){
    std::cout << "ok" << std::endl;
  }
};

int main(void){
  X a;
  X b = std::move(a);

  return 0;
}
