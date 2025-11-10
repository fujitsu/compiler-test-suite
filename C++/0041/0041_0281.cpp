#include <iostream>
#include <array>

int main(void){
  std::array<double, 3> x;

  if(std::is_same< decltype(x), std::array<double, 3>>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
