#include <iostream>
#include <ratio>

int main(void){
  using x = std::ratio<3, 5>;
  using y = std::ratio<1, 5>;

  using res = std::ratio_subtract<x, y>;

  static_assert(res::num == 2, "");
  static_assert(res::den == 5, "");

  if(res::num == 2 && res::den == 5){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
