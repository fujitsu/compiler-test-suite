#include <stdio.h>
#define N 10000

float a[N];
float b[N];

float foo(float sum)
{
  long i;
#pragma omp simd reduction(+:sum)
  for(i = 0; i < N; i++) {
    a[i] = b[i] + 3;
    sum = sum + a[i];
  }
  return sum;
}

int main(void)
{
  float s;
  s = foo(0.0);
  if (a[0] == 3 && a[N-1] == 3) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
  return 0;
}
