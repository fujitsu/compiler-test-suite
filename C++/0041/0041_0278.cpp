#include <iostream>
#include <array>

int main(void){
  std::array<int, 10> x;

  if(std::is_same< decltype(x), std::array<int,10>>::value){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
