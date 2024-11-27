#include <stdlib.h>
#include <stdio.h>
#define N 10003

float a[N];
float b[N];

float foo(void)
{
  long i;
  float x;
#pragma omp simd lastprivate(x)
  for(i=0;i<N;i++) {
    if (b[i] != 0) {
      x = b[i] + 3;
      a[i] = x;
    }
  }
  return x;
}

int main(void)
{
  long i;
  for(i=0;i<N;i++) {
    b[i] = i;
  }
  float x = foo();
  if (a[0] != 0 || a[N-1] != N+3-1) {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
    exit(1);
  }
  if (x != N+3-1) {
    printf("NG x=%d\n", (int )x);
    exit(1);
  }
  puts("PASS");
  return 0;
}
