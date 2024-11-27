#include <stdio.h>

int main(void)
{
  int i;
  const int init = 10;
  const long initL = 0L;
  int sum1 = init, sum2 = init;
  long sum1L = initL, sum2L = initL;
  for (i=1; i<=100; i++) {
    sum1 = sum1 + i;
    sum1L = sum1L + (long)i;
  }
#pragma omp parallel for simd reduction(+:sum2,sum2L)
  for (i=1; i<=100; i++) {
    sum2 = sum2 + i;
    sum2L = sum2L + (long)i;
  }
  if (sum1 != sum2) {
    printf("NG %d %d\n", sum1, sum2);
    return 1;
  }
  if (sum1L != sum2L) {
    printf("NG %ld %d\n", sum1L, sum2L);
    return 1;
  }
  printf("OK\n");
  return 0;
}
