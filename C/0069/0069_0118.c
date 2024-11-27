#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  unsigned long x = 5, y = 5;
  int i;
#pragma omp simd reduction(max:x)
  for (i=0; i<100; i++) {
    x = MAX(x, (unsigned long)i);
  }
  for (i=0; i<100; i++) {
    y = MAX(y, (unsigned long)i);
  }
  if (x!=y) {
    printf("NG %lu %lu\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
