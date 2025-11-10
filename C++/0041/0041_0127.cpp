#include <iostream>

class S{
public:
  int val;
  constexpr S(int x): val(x) {}

};

int main(void){
  constexpr S x(3);
  static_assert(x.val == 3, "x.val is not 3");

  constexpr S y = 5;
  static_assert(y.val == 5, "y.val is not 5");

  constexpr S z = {10};
  static_assert(z.val == 10, "z.val is not 10");

  std::cout << "ok" << std::endl;
  
  return 0;
}
