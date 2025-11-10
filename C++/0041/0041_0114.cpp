#include <iostream>
#include <cstddef>

void func(std::nullptr_t x){
  std::cout << "ok" << std::endl;
}

int main(void){
  std::nullptr_t a = nullptr; 
  std::nullptr_t b = NULL; 

  func(a);

  return 0;
}
