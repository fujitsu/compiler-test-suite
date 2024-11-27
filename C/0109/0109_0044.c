
#include <stdio.h>
#define N 4

long long int a[N];
int b[N];

void foo(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    a[i] = b[i];
  }
}

int main(void)
{
  long i;
  for(i=0;i<N;i++) {
    b[i] = -3;
  }
  foo();
  if (a[0] == -3 && a[N-1] == -3) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
  return 0;
}
