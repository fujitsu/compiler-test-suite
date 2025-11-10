#include <iostream>
#include <utility>

struct X{
};

int main(void){
  X a;
  X b;

  a = std::move(b);

  std::cout << "ok" << std::endl;

  return 0;
}
