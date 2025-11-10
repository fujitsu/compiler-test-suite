#include <iostream>
#include <functional>

int main(void){
  
  auto func1 = []{};

  void (*func4)(void) = []{};
  double (*func5)(double, double) = [](double x, double y){ return x * y; };

  
  typedef void (*func6_type)(void);
  func6_type func6 = []{};

  typedef double (*func7_type)(double, double);
  auto func7 = [](double x, double y){ return x * y; };

  
  using func8_type = void(*)(void);
  func8_type func8 = []{};

  using func9_type = double(*)(double x, double y);
  auto func9 = [](double x, double y) -> double { return x * y; };

  std::cout << "ok" << std::endl;

  return 0;
}
