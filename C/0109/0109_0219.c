#include <stdio.h>
#define N 10000

int a[N];
int b[N];

void foo(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    a[i] = a[i] * b[i];
  }
}

int main(void)
{
  long i;
  for(i=0;i<N;i++) {
    a[i] = 6.;
    b[i] = 2.;
  }
  foo();
  if (a[0] == 12. && a[N-1] == 12. ) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
  return 0;
}
