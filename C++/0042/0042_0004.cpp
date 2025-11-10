#include <iostream>

int main(void){

  auto zero = "\U00000030";
  std::cout << zero << std::endl;

  auto A = "\U00000041";
  std::cout << A << std::endl;

  auto a = "\U00000061";
  std::cout << a << std::endl;

  return 0;
}
