
#include <stdio.h>
#define N 4

long long int a[N];
unsigned int b[N];

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
  if (a[0] == 0xfffffffd && a[N-1] == 0xfffffffd) {
    puts("PASS");
  }
  else {
    printf("NG %ld %ld \n", (long )a[0], (long )a[N-1]);
  }
  return 0;
}
