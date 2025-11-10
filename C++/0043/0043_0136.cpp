#include <iostream>
#include <ratio>

int main(void){
  using x = std::ratio<1, 5>;
  using y = std::ratio<2, 5>;

  using res = std::ratio_add<x, y>;

  static_assert(res::num == 3, "");
  static_assert(res::den == 5, "");

  if(res::num == 3 && res::den == 5){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
