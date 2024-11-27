#include <stdio.h>
#define N 10003

int a[N];
int b[N];

void foo(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    a[i] = b[i] % 3;
  }
}

int main(void)
{
  int i;
  for(i=0;i<N;i++) {
    b[i] = 10;
  }
  foo();
  if (a[0] == 1 && a[N-1] == 1) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
  return 0;
}
