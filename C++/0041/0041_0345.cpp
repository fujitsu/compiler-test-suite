#include <iostream>
#include <cmath>
#include <limits>

int main(void){
  
  auto ret = std::fpclassify( std::numeric_limits<float>::denorm_min() );
  auto test = std::numeric_limits<float>::has_denorm;

  if(ret == FP_SUBNORMAL || test == std::denorm_indeterminate ||
     test == std::denorm_present || test == std::denorm_absent){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
