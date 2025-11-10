#include <iostream>

void func(void){
  std::cout << "ok" << std::endl;
}

template<class Thead, class... Args>
void func(Thead head, Args... args){
  func( ++args... );
}

int main(void){
  func(1, 2.17f, 3.14, 'A', "abc");

  return 0;
}
