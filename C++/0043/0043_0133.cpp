#include <iostream>
#include <ratio>

int main(void){
  std::ratio<2, 4> x;

  static_assert(x.num == 1, "");
  static_assert(x.den == 2, "");

  if(x.num == 1 && x.den == 2){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

