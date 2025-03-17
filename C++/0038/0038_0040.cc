#include <iostream>
#include <cmath>

void round_func(double &num);

int main()
{
  double i =100.4;

  round_func(i);

  if (i == 100) {
    std::cout << "OK" << std::endl;
  }
  else {
    std::cout << "NG" << std::endl;
  }

  return 0;
}

void round_func(double &num)
{
  double val,frac;

  frac=modf(num,&val);
  if (frac < 0.5) {
    num = val;
  }
  else {
    num = val + 1.0; 
  }
}
