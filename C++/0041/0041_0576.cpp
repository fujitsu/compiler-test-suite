#include <iostream>
#include <utility>

int main(void){

  auto x = std::move(3);

  if(x == 3 && std::is_same<decltype(x), int>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
