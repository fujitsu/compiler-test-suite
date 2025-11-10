#include <iostream>
#include <cmath>
#include <limits>

int main(void){
  
  std::fpclassify(std::numeric_limits<double>::infinity());

  
  std::fpclassify(std::numeric_limits<double>::quiet_NaN());

  
  std::fpclassify(1.0);

  
  std::fpclassify(std::numeric_limits<double>::denorm_min());

  
  std::fpclassify(0.0);
  
  std::cout << "ok" << std::endl;

  return 0;
}
