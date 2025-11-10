#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec;

  std::get<0>(vec) = 100;

  if(std::get<0>(vec) == 100){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
