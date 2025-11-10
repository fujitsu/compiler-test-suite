#include <iostream>
#include <thread>
#include <cassert>

extern "C" int printf(const char*, ...);

void func(void){
  printf("ok\n");
}

int main(void){
  std::thread th1(func);
  
  std::thread::id tid = th1.get_id();
  
  
  
  
  th1.join();

  return 0;
}
