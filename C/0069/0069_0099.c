#include <stdio.h>

int main(void)
{
  int i;
  const long init = 0xff;
  long x = init, y = init;
  for (i=1; i<=0xff; i++) {
    x = x & (long)i;
  }
#pragma omp simd reduction(&:y)
  for (i=1; i<=0xff; i++) {
    y = y & (long)i;
  }
  if (x != y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
