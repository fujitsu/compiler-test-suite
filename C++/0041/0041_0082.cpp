#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> x{1, 2, 3};
  std::array<int, 3> y{1, 2, 3};
  
  std::array<int, 3> z;
  std::swap(z, x); 

  std::get<0>(x) = 100;                        

  if(y.at(1) == 2 && z == y && std::get<0>(x) == 100){ 
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
