#include <iostream>
#include <cstdlib>
#include <omp.h>

#include <mutex>
std::mutex print_mtx;

struct X{
  X(int){
  }

  ~X(){
    std::cout << "ok1" << std::endl;
  }
};

void func(void){
  std::cout << "ok2" << std::endl;
}


int main(void){
  
  omp_set_num_threads(2);
    
  std::atexit( func );

#pragma omp parallel for 
  for(int i=0; i<2; ++i){
    std::lock_guard<std::mutex> lock(print_mtx);
    static X tmp(i);
    exit(0);
  }

  return 0;
}
