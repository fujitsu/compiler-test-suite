#include <iostream>
#include <utility>
#include <type_traits>

int main(void){
  
  auto ret1 = std::is_integral<int>::value; 

  
  auto ret2 = std::is_floating_point<float>::value; 

  
  auto ret3 = std::is_arithmetic<int>::value;   
  auto ret4 = std::is_arithmetic<float>::value; 

  if(ret1 && ret2 && ret3 && ret4){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
