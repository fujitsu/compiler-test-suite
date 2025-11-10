#include <iostream>

template <class... Args>
void func1(Args... args){
  std::cout << "ok" << std::endl;
}

template <class... Args>
void func2(Args... args){
  func1(args...);
}

int main(void){

  func2(1, 2.17f, 3.14, 'A', "abc");

  return 0;
}
