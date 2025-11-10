#include <thread>
#include <cassert>

extern "C" int printf(const char*, ...);

void func(void){
  printf("ok\n");
}

int main(void){
  std::thread th1(func);
  assert(th1.joinable());
  th1.join();
  
  std::thread th2;
  assert(!th2.joinable());

  printf("ok\n");

  return 0;
}
