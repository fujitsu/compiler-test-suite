#include <iostream>

void func1(void) noexcept(true){
  std::cout << "ok" << std::endl;
}

void func(void) noexcept( noexcept(func1()) ){
  func1();
}

int main(void){
  func();

  return 0;
}
