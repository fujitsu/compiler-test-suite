#include <stdio.h>
#define N 10000

float a[N];
float b[N];

void foo(void)
{
  long i;
  float x;
#pragma omp simd private(x)
  for(i=0;i<N;i++) {
    x = b[i] + 3;
    a[i] = x;
  }
}

int main(void)
{
  foo();
  if (a[0] == 3 && a[N-1] == 3) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
  return 0;
}
