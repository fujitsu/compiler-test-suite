#include <iostream>
#include <cmath>
#include <cmath>

int main(void){
  float x = 0.0f;
  int ret = std::fpclassify(x);

  if(ret == FP_ZERO){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
