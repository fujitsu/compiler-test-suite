#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  float x = 5, y = 5;
  int i;
#pragma omp simd reduction(max:x)
  for (i=0; i<100; i++) {
    x = MAX(x, (float)i);
  }
  for (i=0; i<100; i++) {
    y = MAX(y, (float)i);
  }
  if (x!=y) {
    printf("NG %f %f\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
