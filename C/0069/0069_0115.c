#include <stdio.h>

#define MAX(a,b) (((a)>(b)) ? (a):(b))
#define MIN(a,b) (((a)<(b)) ? (a):(b))

int main(void)
{
  double x = 5.0f, y = 5.0f;
  int i;
#pragma omp simd reduction(max:x)
  for (i=0; i<10; i++) {
    x = MAX(x, (double)i);
  }
  for (i=0; i<10; i++) {
    y = MAX(y, (double)i);
  }
  if (x!=y) {
    printf("NG %f %f\n", x, y);
    return 1;
  }
  printf("OK\n");
  return 0;
}
