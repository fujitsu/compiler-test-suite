#include <thread>

extern "C" int printf(const char*, ...);

void func(void){
  printf("ok\n");
}

int main(void){
  std::thread th1(func);
  std::thread th2;
  
  th1.swap(th2);

  th2.join();

  return 0;
}
