#include <iostream>
#include <utility>
#include <cstddef>

int main(void){

  auto x = std::move(nullptr);

  if(x == nullptr && std::is_same<decltype(x), std::nullptr_t>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
