#include <iostream>
#include <omp.h>

#include <mutex>

std::mutex print_mtx;

void func(void){
  static int x = omp_get_thread_num();
  thread_local int idx = omp_get_thread_num();

  std::lock_guard<std::mutex> lock(print_mtx);
  if( (x == 0 || x == 1) && idx == omp_get_thread_num() ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
}

int main(void){

  omp_set_num_threads(2);

#pragma omp parallel for 
  for(int i=0; i<2; ++i){
    func();
  }

  return 0;
}
