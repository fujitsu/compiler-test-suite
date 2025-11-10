#include <iostream>

int x;
thread_local int y;
static thread_local int z;

int main(void){

  std::cout << "ok" << std::endl;

  return 0;
}
