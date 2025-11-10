#include <thread>
#include <unistd.h>

extern "C" int printf(const char*, ...);

void func(void){
  printf("ok\n");
}

int main(void){
  std::thread th1(func);

  sleep(2);

  th1.detach();

  return 0;
}
