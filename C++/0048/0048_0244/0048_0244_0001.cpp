#include <cstdio>
#include <functional>

void sub1()
{
  std::function<int(int)> factorial = 
    [&] (int n) {
    return (n == 0 ? 1 : n * factorial(n - 1));
  };
  
  if (factorial(3)  == 6 &&
      factorial(10) == 3628800) {
    std::puts("OK");
  }
  else {
    std::puts("NG");
  }
}
