#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec{ 1, 2, 3 };

  if(vec.at(0) == vec[0] &&
     vec.at(2) == vec.back() ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
 
  return 0;
}
