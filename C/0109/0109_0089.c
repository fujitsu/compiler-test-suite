#include <stdio.h>
#include <math.h>
#include <complex.h>
#define N 17

typedef _Complex double test_t;

test_t  xx = 1.0, input[N], result = 4.147458e+05 +  2.067924e+05 * I;

void sum_xx(void)
{
  long i;
#pragma omp simd reduction(*:xx)
  for(i=0;i<N;i++) {
    xx = xx * input[i];
  }
}

const test_t data[5] = {
   1.0 + 1.0 * I ,
   2.0 + 0.3 * I ,
   0.5 + 3.1 * I ,
  -3.0 + 0.1 * I ,
   0.3 + -2.0 * I ,
};
int main(void)
{
  long i;
  for(i=0;i<N;i++) {
    input[i] = data[i % 5];
  }
  sum_xx();
  if (fabs(creal(xx) - creal(result)) > 0.1 ||
      fabs(cimag(xx) - cimag(result)) > 0.1) {
    printf("NG %e +  %e * I\n", creal(xx) , cimag(xx));
    printf("NG %e +  %e * I\n", creal(result), cimag(result));
    printf("NG %e \n", (double )fabs(creal(xx) - creal(result)));
    printf("NG %e \n", (double )fabs(cimag(xx) - cimag(result)));
  }
  puts("PASS");
  return 0;
}
