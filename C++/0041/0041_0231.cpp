#include <iostream>

template <class... Types>
void func(Types... args){
  
}

int main(void){

  func();
  func(1);
  func(1, 3.14);

  std::cout << "ok" << std::endl;

  return 0;
}
