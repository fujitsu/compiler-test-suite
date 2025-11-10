#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> x{1, 2, 3};
  std::array<int, 3> y{4, 5, 3};

  if(x > y){
    std::cout << "ng" << std::endl;
  } else {
    std::cout << "ok" << std::endl;
  }

  return 0;
}
