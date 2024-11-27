#include <stdio.h>

int main(void)
{
  unsigned long i;
  const unsigned long init = 0xffff;
  unsigned long x = init, y = init;
  for (i=1; i<=0xff; i++) {
    x = x || i;
  }
#pragma omp simd reduction(||:y)
  for (i=1; i<=0xff; i++) {
    y = y || i;
  }
  if (x != y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
