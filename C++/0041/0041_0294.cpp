#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec = {1, 1, 1};

  auto crbeg = vec.crbegin();
  auto crend = vec.crend();

  if(*crbeg == *(crend-3) && 
     *(crbeg+1) == *(crend-2) && 
     *(crbeg+2) == *(crend-1) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
