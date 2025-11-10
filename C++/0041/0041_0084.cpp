#include <iostream>
#include <array>

int main(void){
  std::array<int, 3> vec {1, 2, 3};

  std::tuple_element<0, std::array<int, 3>>::type x; 
  std::tuple_element<1, std::array<int, 3>>::type y = 100; 

  

  if(y == 100){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
