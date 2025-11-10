#include <iostream>
#include <ratio>

int main(void){
  std::ratio<1, 5> x;
  std::ratio<2, 5> y;

  auto res = std::ratio_add< decltype(x), decltype(y) >();

  static_assert(res.num == 3, "");
  static_assert(res.den == 5, "");

  if(res.num == 3 && res.den == 5){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
