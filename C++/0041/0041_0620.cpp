#include <iostream>
#include <cstddef>

int main(void){
  std::nullptr_t x;

  if(x == nullptr){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
