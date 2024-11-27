#include <stdio.h>
#include <math.h>
#define N 10000

typedef double test_t;

test_t  xx, input[N], result = 4.9995e+07;

void sum_xx(void)
{
  long i;
#pragma omp simd reduction(+:xx)
  for(i=0;i<N;i++) {
    xx = xx + input[i];
  }
}

int main(void)
{
  long i;
  for(i=0;i<N;i++) {
    input[i] = i;
  }
  sum_xx();
  if (fabs(xx - result) > 1e-6) {
    printf("NG %g %g\n", xx , result);
    printf("NG %g \n", fabs(xx - result));
  }
  puts("PASS");
  return 0;
}
