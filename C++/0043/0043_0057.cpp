#include <iostream>
#include <omp.h>
#include <mutex>

std::mutex m;

static int x;
thread_local int y;

void func(void){
  if(x == 0 && y == 0){
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
