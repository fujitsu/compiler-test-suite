#include <iostream>

void func(void){
  thread_local int x;
}

int main(void){

  func();
  std::cout << "ok" << std::endl;

  return 0;
}
