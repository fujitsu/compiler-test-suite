#include <iostream>	
#include <sstream>	
#include <cstdio>
#include <cmath>

static double mult0(double x, double y)
{
  return x * y;
}

volatile double x = -0.5;
volatile double z = 0.0;

int main()
{
  bool a, b;
  std::ostringstream ost1;
  double y = mult0(x, z);			
  ost1 << y;					
  a = (ost1.str() == "-0");
  
  

  std::ostringstream ost2;
  
  x = nan("");					
  ost2 << x << std::endl;
  ost2 << -x << std::endl;		
  b = (ost2.str()[0] != '-');
  
  std::cout << "TEST\t" << (a && b ? "OK" : "NG") << std::endl;
  return 0;
}
