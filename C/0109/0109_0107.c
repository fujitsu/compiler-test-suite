#include <stdio.h>
#define N 10000

typedef signed short test_t;

test_t  xx, input[N], result =  -8968;

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
  if (xx != result) {
    printf("NG xx %d %d \n", (int )xx, result);
  }
  puts("PASS");
  return 0;
}
