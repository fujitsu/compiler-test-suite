#include <iostream>
#include <omp.h>
#include <mutex>

std::mutex m;

struct X{
  int _idx;

  X(int idx): _idx(idx){
  }
};

X build(int idx){
  X tmp(idx);
  return tmp;
}


void func(void){
  thread_local auto x = build(  omp_get_thread_num() );

  if(x._idx == omp_get_thread_num() ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
}


int main(void){
  
  omp_set_num_threads(2);
    
#pragma omp parallel for 
  for(int i=0; i<2; ++i){
    m.lock();
    func();
    m.unlock();
  }

  return 0;
}
