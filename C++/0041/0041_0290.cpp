#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec {1, 2, 3};

  auto rbeg = vec.rbegin();
  auto rend = vec.rend();

  if(*rbeg == *(rend-3) && 
     *(rbeg+1) == *(rend-2) && 
     *(rbeg+2) == *(rend-1) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

