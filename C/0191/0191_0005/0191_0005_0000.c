
#include <stdio.h>
char xxx[8000001] __attribute__ ((aligned (0x1000)));
#pragma omp threadprivate(xxx)
int main() {
  xxx[0]=1;
  xxx[8000000]=10;
#pragma omp parallel copyin(xxx)
  {
    if (xxx[0]!= 1) printf("ng01: %d\n", xxx[0]);
    if (xxx[8000000]!= 10) printf("ng02\n");
  }
  if (((unsigned long)&xxx[0] & 0xfff) != 0) printf("ng03: %llx\n", &xxx[0]);
  printf("pass\n");
  return 0;
}
