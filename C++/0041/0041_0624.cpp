#include <iostream>
#include <cstddef>

std::nullptr_t func(std::nullptr_t x, std::nullptr_t& y){
  std::nullptr_t ret = nullptr;
  return ret;
}

int main(void){
  std::nullptr_t tmp;

  if(func(tmp, tmp) == nullptr){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
