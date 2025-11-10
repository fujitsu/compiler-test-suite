#include <iostream>
#include <omp.h>

void func(void){
  _Pragma("omp parallel")
    std::cout << "ok" << std::endl;
}

int main(void){
  omp_set_num_threads(1);
  func();

  return 0;
}
