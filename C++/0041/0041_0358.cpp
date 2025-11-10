#include <iostream>
#include <cmath>
#include <limits>

int main(void){
  
  auto ret = std::fpclassify( std::numeric_limits<int>::quiet_NaN() );

  if(ret == FP_ZERO){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
