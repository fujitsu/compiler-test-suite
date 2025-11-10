#include <iostream>
#include <utility>

struct X{
};

int main(void){
  X a;
  X b = std::move(a);

  std::cout << "ok" << std::endl;

  return 0;
}
