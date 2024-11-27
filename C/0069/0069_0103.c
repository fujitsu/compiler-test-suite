#include <stdio.h>

int main(void)
{
  int i;
  const unsigned char init = 0x00;
  long x = init, y = init;
  for (i=1; i<=0xff; i++) {
    x = x | (unsigned char)i;
  }
#pragma omp simd reduction(|:y)
  for (i=1; i<=0xff; i++) {
    y = y | (unsigned char)i;
  }
  if (x != y) {
    printf("NG %d %d\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
