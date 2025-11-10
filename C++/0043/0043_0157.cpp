#include <thread>

extern "C" int printf(const char*, ...);

void func(void){
  printf("ok\n");
}

int main(void){
  std::thread th1(func);

  auto handle = th1.native_handle();

  th1.join();
  
  return 0;
}
