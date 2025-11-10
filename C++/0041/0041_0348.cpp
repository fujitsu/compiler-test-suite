#include <iostream>
#include <cmath>
#include <limits>

int main(void){
  
  auto ret = std::fpclassify( std::numeric_limits<double>::quiet_NaN() );

  if(ret == FP_NAN){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
