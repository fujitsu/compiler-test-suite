#include <iostream>

constexpr int fibo(int n) {
  return (n <= 2) ? 1 : fibo(n - 1) + fibo(n - 2);
}

int main(void){

  static_assert(fibo(1) == 1, "fibo(1) is not 1");
  static_assert(fibo(2) == 1, "fibo(2) is not 1");
  static_assert(fibo(3) == 2, "fibo(3) is not 2");
  static_assert(fibo(4) == 3, "fibo(4) is not 3");
  static_assert(fibo(5) == 5, "fibo(5) is not 5");
  static_assert(fibo(6) == 8, "fibo(6) is not 8");
  static_assert(fibo(7) == 13, "fibo(7) is not 13");  
  static_assert(fibo(8) == 21, "fibo(8) is not 21");  
  static_assert(fibo(9) == 34, "fibo(9) is not 34");
  static_assert(fibo(10) == 55, "fibo(10) is not 55");

  std::cout << "ok" << std::endl;
  
  return 0;
}
