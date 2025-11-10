#include <thread>

extern "C" int printf(const char*, ...);

void func(int x, int y, int z){
  printf("x = %d\n", x);
  printf("y = %d\n", y);
  printf("z = %d\n", z);
}

int main(void){
  std::thread th(func, 1, 2, 3);

  th.join();

  return 0;
}

