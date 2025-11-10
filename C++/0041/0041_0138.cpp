#include <iostream>

int main(void){
  auto add1 = [](double x, double y) -> double { 
    return x + y;
  };

  std::cout << add1(1, 2) << std::endl;

  auto add2 = [](double x, double y){ 
    return x + y;
  };

  std::cout << add2(1, 2) << std::endl;

  return 0;
}
