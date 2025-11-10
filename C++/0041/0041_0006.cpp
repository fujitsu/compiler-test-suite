#include <iostream>

template<class... Types>
void func(Types... args){
  std::cout << "ok" << std::endl;
}

int main(void){
  func();
  func(1);
  func(3.14);

  return 0;
}
