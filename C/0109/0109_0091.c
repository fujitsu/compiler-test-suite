#include <stdio.h>
#include <math.h>
#include <complex.h>
#define N 10000

typedef float test_t;

test_t  xx = 1.0, input[N], result = 1.0;

void sum_xx(void)
{
  long i;
#pragma omp simd reduction(*:xx)
  for(i=0;i<N;i++) {
    xx = xx * input[i];
  }
}

int main(void)
{
  long i;
  for(i=0;i<N;i++) {
    switch (i%3) {
    case 0:
      input[i] = 1.0; break;
    case 1:
      input[i] = 10.0; break;
    case 2:
      input[i] = 0.1 ; break;
    }
  }
  sum_xx();
  if (fabs(xx - result) > 1e-6) {
    printf("NG %g %g\n", xx , result);
    printf("NG %g \n", fabs(xx - result));
  }
  puts("PASS");
  return 0;
}
