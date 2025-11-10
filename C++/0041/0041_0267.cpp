#include <iostream>

struct X{
  
  static thread_local int y;
  thread_local static int z;
};

int main(void){
  X a;

  std::cout << "ok" << std::endl;

  return 0;
}
