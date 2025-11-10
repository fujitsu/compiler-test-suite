#include <iostream>
#include <utility>

int main(void){

  auto x = std::move(true);

  if(x == true && std::is_same<decltype(x), bool>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
