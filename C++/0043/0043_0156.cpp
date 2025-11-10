#include <iostream>
#include <thread>
#include <cassert>

extern "C" int printf(const char*, ...);

void func(void){
  printf("ok\n");
}

int main(void){
  std::thread th2;
  assert(th2.get_id() == std::thread::id() );
  
  func();

  return 0;
}
