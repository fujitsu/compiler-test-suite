#include <iostream>

constexpr int square(int x){
  return x * x;
}

constexpr int sigma(int val){
  return val == 0 ? 0 : val + sigma(val - 1);
}

int main(void){
  constexpr int x = 2;
  static_assert( square(x) == 4, "result is not 4");

  constexpr auto val = sigma(10);
  static_assert( val == 55, "val is not 55");

  std::cout << val << std::endl;

  return 0;
}
