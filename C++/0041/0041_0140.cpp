#include <iostream>

int main(void){

  double only_one = 3.0; 

  auto area = [only_one](double r) mutable -> double{
    only_one = 3.14;
    return r * r * only_one;
  };

  std::cout << only_one << std::endl;

  std::cout << area(2) << std::endl;

  return 0;
}
