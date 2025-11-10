#include <iostream>
#include <cstddef>

int main(void){
  std::nullptr_t x = nullptr;
  std::nullptr_t y = NULL;
  std::nullptr_t z = 0;

  if(x == nullptr && y == NULL && z == 0){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

