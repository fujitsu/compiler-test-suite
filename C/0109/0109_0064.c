
#include <stdio.h>
#define N 10000

float a[N];
float b[N];

float foo(void)
{
  long i;
  float x;
#pragma omp simd lastprivate(x)
  for(i=0;i<N;i++) {
    x = b[i] + 3;
    a[i] = x;
  }
  return x;
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
