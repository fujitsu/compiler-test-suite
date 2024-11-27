
#include <stdio.h>
#define N 10000

float a[N];
float b[N];

float foo(void)
{
  long i;
  float x[1];
#pragma omp simd lastprivate(x)
  for(i=0;i<N;i++) {
    x[0] = b[i] + 3;
    a[i] = x[0];
  }
  return x[0];
}

int main(void)
{
  float x = foo();
  if (a[0] == 3 && a[N-1] == 3 && x == 3) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
  return 0;
}
