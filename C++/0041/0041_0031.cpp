#include <iostream>

constexpr int square(int val){
  return val * val;
}

constexpr int g(int val){
  return (val == 0) ? val : -val;
}

constexpr int sigma(int val){
  return val == 0 ? 0 : val + sigma(val -1);
}

int main(void){
  static_assert( square(10) == 100, "ng");
  static_assert( g(10) == -10, "ng");
  static_assert( g(0) == 0, "ng");
  static_assert( sigma(1) == 1, "ng");

  std::cout << "ok" << std::endl;

  return 0;
}
