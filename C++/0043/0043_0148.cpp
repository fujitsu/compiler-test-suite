#include <thread>

extern "C" int printf(const char*, ...);

void func(void){
  printf("thread\n");
}

int main(void){
  std::thread th(func);

  th.join();

  return 0;
}

