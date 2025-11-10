#include <iostream>

struct X{
  X() = default;
  ~X() = default;

  X(const X&) = delete;
  X& operator=(const X&) = delete;

  X(X&&) = default;
  X& operator=(X&&) = delete;
};

int main(void){

  X tmp;

  std::cout << "ok" << std::endl;

  return 0;
}
