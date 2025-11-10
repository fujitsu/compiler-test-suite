#include <thread>
#include <utility>

extern "C" int printf(const char*, ...);

void func(void){
  printf("ok\n");
}

int main(void){
  std::thread th1;
  std::thread th2(func);
  
  th1 = std::move(th2);
 
  th1.join();

  return 0;
}

