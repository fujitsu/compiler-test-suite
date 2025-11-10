#include <iostream>
#include <cmath>
#include <limits>

int main(void){
  
  auto ret = std::fpclassify(1.0);

  if(ret == FP_NORMAL){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
