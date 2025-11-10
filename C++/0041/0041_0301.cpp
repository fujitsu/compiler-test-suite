#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec {1, 2, 3};

  auto dist = vec.data();

  if(std::is_same< decltype(dist), int*>::value){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
