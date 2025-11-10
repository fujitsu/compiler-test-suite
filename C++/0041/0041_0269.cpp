#include <iostream>
#include <omp.h>

void func(void){
  thread_local int x;
  int* address[4];

#pragma omp parallel for num_threads(4)
  for(int i=0; i<4; ++i){
    address[ omp_get_thread_num() ] = &x;
  }

  for(int i=0; i<4; ++i){
    
  }
}

int main(void){
 
  func();
  std::cout << "ok" << std::endl;

  return 0;
}
