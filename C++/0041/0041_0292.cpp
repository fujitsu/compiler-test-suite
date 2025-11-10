#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec;

  auto cbeg = vec.cbegin();
  auto cend = vec.cend();

  if(*cbeg == *(cend-3) && 
     *(cbeg+1) == *(cend-2) && 
     *(cbeg+2) == *(cend-1) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
