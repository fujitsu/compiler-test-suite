#include "000.h"
#include <iostream>

void func(){
  tuple<int, short, double, float> t(10, 30, 3.3, 8.5f);
  float f = static_cast<tuple<float>&>(t).data;
  std::cout << "tuple float value = " << f << std::endl;
}
