#include <iostream>
#include <cmath>

extern int func(float x);

int main(void){

  if(func(0.0) == FP_ZERO){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
