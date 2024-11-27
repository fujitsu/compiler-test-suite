#include <stdio.h>
#define N 10000

typedef unsigned char test_t;

test_t  xx=-8, input[N], result = 0;

void sum_xx(void)
{
  long i;
#pragma omp simd reduction(-:xx)
  for(i=0;i<N;i++) {
    xx = xx - input[i];
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
