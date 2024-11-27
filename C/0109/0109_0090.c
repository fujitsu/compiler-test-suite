#include <stdio.h>
#include <math.h>
#include <complex.h>
#define N 17

typedef _Complex float test_t;

test_t  xx = 1.0, input[N], result = 4.147459e+05 +  2.067924e+05 * I;

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
  float xx_r = crealf(xx);
  float xx_i = cimagf(xx);
  float re_r = crealf(result);
  float re_i = cimagf(result);
  if (fabs(xx_r - re_r) > 0.2 ||
      fabs(xx_i - re_i) > 0.1 ) {
    printf("NG %e +  %e * I\n", xx_r , xx_i);
    printf("NG %e +  %e * I\n", re_r, re_i);
    printf("NG %e \n", (double )fabs(xx_r - re_r));
    printf("NG %e \n", (double )fabs(xx_i - re_i));
  }
  puts("PASS");
  return 0;
}
