#include <stdio.h>
extern void func(void);
int main() {
#pragma omp parallel
  {
    func();
  }
  printf("pass\n");
  return 0;
}
