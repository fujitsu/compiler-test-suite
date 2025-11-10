#include <iostream>
#include <ratio>

int main(void){
  using x = std::ratio<2, 5>;
  using y = std::ratio<3, 5>;

  using res = std::ratio_multiply<x, y>;

  static_assert(res::num == 6, "");
  static_assert(res::den == 25, "");

  if(res::num == 6 && res::den == 25){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
