
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
    x = b[i] + 3;
    a[i] = x;
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
  if (a[0] == 3 && a[N-1] == 10005 && x == 10005) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
    printf("NG x=%d\n", (int )x);
  }
  return 0;
}
