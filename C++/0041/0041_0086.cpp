#include <iostream>
#include <cstddef>

void func(std::nullptr_t x){ 
  std::cout << "ok" << std::endl;
}

int main(void){
  func(nullptr); 
  func(NULL);    
  func(0);       

  return 0;
}
