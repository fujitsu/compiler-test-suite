#include <iostream>
#include <utility>
#include <cstddef>

int main(void){
  std::nullptr_t x = nullptr;

  auto ret = std::move(x);

  if(ret == nullptr && std::is_same<decltype(x), std::nullptr_t>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
