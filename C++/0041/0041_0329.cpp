#include <iostream>

int main(void){
  int x = 0;

  auto const x_1 = x; 
  auto const volatile x_2 = x; 

  auto& x_3 = x; 
  auto const& x_4 = x; 
  auto const volatile& x_5 = x; 

  std::cout << "ok" << std::endl;

  return 0;
}
