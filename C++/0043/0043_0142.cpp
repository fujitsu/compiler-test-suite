#include <iostream>
#include <ratio>

int main(void){
  using x = std::ratio<2, 5>;
  using y = std::ratio<2, 5>;
  using z = std::ratio<1, 5>;

  constexpr auto ret1 = std::ratio_not_equal<x, y>::value;
  constexpr auto ret2 = std::ratio_not_equal<x, z>::value;

  static_assert(!ret1, "");
  static_assert(ret2, "");

  if(!ret1 && ret2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
