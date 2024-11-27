#include <stdio.h>
#define N 10000

float a[N];
float b[N];

void foo(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    a[i] = b[i] + 3;
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
