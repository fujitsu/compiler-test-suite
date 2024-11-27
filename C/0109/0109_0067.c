#include <stdio.h>
#define N 10000

float a[N];
float b[N];
float c[N] = { 0, 0, 3 };

float foo(void)
{
  long i;
  float x;
#pragma omp simd lastprivate(x)
  for(i=0;i<N;i++) {
    if (c[i] > 0 ) {
      x = b[i] + 3;
      a[i] = x;
    }
  }
  return x;
}

int main(void)
{
  c[N-1] = 3;
  float x = foo();
  if (a[0] == 0 && a[2] == 3 && x == 3) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
  return 0;
}
