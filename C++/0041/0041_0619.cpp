#include <iostream>
#include <cstddef>

int main(void){
  std::nullptr_t x = nullptr;
  std::nullptr_t y = x;

  auto z = x;

  if(x == nullptr && y == nullptr && z == nullptr){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
