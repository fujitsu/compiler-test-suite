#include <iostream>

void func(void){
  thread_local int x;
  thread_local static int y;
  static thread_local int z;
 
  std::cout << "ok" << std::endl;
}

int main(void){

  func();

  return 0;
}
