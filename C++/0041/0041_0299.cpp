#include <iostream>
#include <array>

int main(void){
  std::array<int, 1> vec;

  if(vec.front() == vec[0] &&
     vec.back()  == vec[0]){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
