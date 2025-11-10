#include <thread>

extern "C" int printf(const char*, ...);

int main(void){
  int n = std::thread::hardware_concurrency();

  if(n >= 1){
    printf("ok\n");
  } else{
    printf("hardware_concurrency is not supported\n");
  }
  
  return 0;
}
