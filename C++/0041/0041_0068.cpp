#include <iostream>

void func(void){   
  std::cout << __func__ << std::endl;
}

int main(void){
  func();

  return 0;
}
