#include <iostream>

template <class... Args>
void func(Args... args){
  std::cout << "ok" << std::endl;
}

int main(void){
  
  func(1, 2, 3);

  return 0;
}
