#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec{0, 1, 2};

  
  
  
  

  if(vec[0] == 0 && vec[1] == 1 && vec[2] == 2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
