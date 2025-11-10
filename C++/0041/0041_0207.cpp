#include <iostream>

struct X{
  X() = default;

  
  X(const X&) = delete;
  X& operator=(const X&) = delete;

  
  X(X&&) = delete;
  X& operator=(X&&) = delete;
};

int main(void){
  X a;

  std::cout << "ok" << std::endl;

  return 0;
}
