#include <iostream>

struct X{
  X() = default;

  
  X(int) = delete;
  void* operator new(std::size_t) = delete;
};

int main(void){
  std::cout << "ok" << std::endl;

  return 0;
}
