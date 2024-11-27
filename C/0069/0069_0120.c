#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  __fp16 x = 5, y = 5;
  int i;
#pragma omp simd reduction(min:x)
  for (i=0; i<100; i++) {
    x = MIN(x, (__fp16)i);
  }
  for (i=0; i<100; i++) {
    y = MIN(y, (__fp16)i);
  }
  if (x!=y) {
    printf("NG %f %f\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
