#include <iostream>

using org_int = int;

double add(double x, double y){ return x + y; }

using funcptr = double(*)(double, double);
funcptr f = add;

int main(void){
  org_int x = 10;

  std::cout << "ok" << std::endl;

  return 0;
}
