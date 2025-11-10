#include <iostream>
#include <utility>

int main(void){

  auto x = std::move('A');

  if(x == 'A' && std::is_same<decltype(x), char>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
