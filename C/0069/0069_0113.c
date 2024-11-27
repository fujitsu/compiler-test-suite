#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  __fp16 x = 5.0f, y = 5.0f;
  int i;
#pragma omp simd reduction(max:x)
  for (i=0; i<100; i++) {
    x = MAX(x, (__fp16)i);
  }
  for (i=0; i<100; i++) {
    y = MAX(y, (__fp16)i);
  }
  if (x!=y) {
    printf("NG %f %f\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
