#include <iostream>
#include <cmath>
#include <limits>

int main(void){
  
  auto ret = std::fpclassify( std::numeric_limits<float>::infinity() );

  if(ret == FP_INFINITE){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
