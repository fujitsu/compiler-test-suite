#include <iostream>

int main(void){
#ifndef __clang__
  alignas(128) double x = 0.01;
  double alignas(256) y = 2.71;
  double z alignas(256) = 3.14;
#endif

  

  return 0;
}
