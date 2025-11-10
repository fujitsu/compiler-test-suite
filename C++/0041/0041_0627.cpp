#include <iostream>
#include <utility>
#include <cstddef>

int main(void){
  std::nullptr_t src = nullptr;

  auto dist = std::move(src);

  dist = std::move(src);

  if(dist == nullptr){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
