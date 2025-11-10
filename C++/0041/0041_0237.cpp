#include <iostream>

template <class... Args>
void func1(Args... args){
  std::cout << "ok" << std::endl;
}

template <class... Args>
void func2(Args... args){
  auto func = [ args... ] (){ func1( args... ); };

  func();
}

int main(void){
  
  func2(1, 3.14, "abc");
  
  return 0;
}
