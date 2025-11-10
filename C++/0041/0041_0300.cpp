#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec{1, 2, 3};

  if(vec.front() == vec[0] &&
     vec.back()  == vec[ vec.size()-1 ]){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
