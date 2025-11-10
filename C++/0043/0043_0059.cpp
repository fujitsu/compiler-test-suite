#include <iostream>
#include <omp.h>

#include <mutex>

std::mutex print_mtx;

class X {
public:
  static void func(){
    std::lock_guard<std::mutex> lock(print_mtx);
    
    std::cout << "ok" << std::endl;
  }
};

int main(void){
  X a;

  omp_set_num_threads(2);

#pragma omp parallel for 
  for(int i=0; i<2; ++i){
    a.func();
  }

  return 0;
}


