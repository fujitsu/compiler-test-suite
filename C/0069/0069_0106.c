#include <stdio.h>

int main(void)
{
  int i;
  const int init = 10;
  const float initr = 0.0f;
  int sum1 = init, sum2 = init;
  float sum1r = initr, sum2r = initr;
  for (i=1; i<=100; i++) {
    sum1 = sum1 + i;
    sum1r = sum1r + (float)i; 
  }
#pragma omp simd reduction(+:sum2,sum2r)
  for (i=1; i<=100; i++) {
    sum2 = sum2 + i;
    sum2r = sum2r + (float)i;
  }
  if (sum1 != sum2) {
    printf("NG %d %d\n", sum1, sum2);
    return 1;
  }
  if (sum1r != sum2r) {
    printf("NG %f %f\n", sum1r, sum2r);
    return 1;
  }
  printf("OK\n");
  return 0;
}
