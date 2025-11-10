#include <iostream>

int main(void){
  constexpr double r = 10.0;
  constexpr auto area = r * r * 3.14;

  static_assert(area == 314.0, "ng");

  std::cout << "ok" << std::endl;

  return 0;
}
