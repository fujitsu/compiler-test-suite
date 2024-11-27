#include <stdio.h>

int main(void)
{
  int i;
  const int init = 10;
  const double initd = 0.0L;
  int sum1 = init, sum2 = init;
  double sum1d = initd, sum2d = initd;
  for (i=1; i<=100; i++) {
    sum1 = sum1 + i;
    sum1d = sum1d + (double)i;
  }
#pragma omp parallel
  {
#pragma omp for simd reduction(+:sum2,sum2d)
    for (i=1; i<=100; i++) {
      sum2 = sum2+ i;
      sum2d = sum2d + (double)i;
    }
  }
  if (sum1 != sum2) {
    printf("NG %d %d\n", sum1, sum2);
    return 1;
  }
  if (sum1d != sum2d) {
    printf("NG %e %e\n", sum1d, sum2d);
    return 1;
  }
  printf("OK\n");
  return 0;
}
