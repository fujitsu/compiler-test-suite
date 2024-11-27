
#include <stdio.h>
#define N 100

float a[N][N];
float b[N][N];

void foo(void)
{
  long i, j;
  for(j=0;j<N;j++) {
#pragma omp simd
    for(i=0;i<N;i++) {
      a[j][i] = b[j][i] + 3;
    }
  }
}

int main(void)
{
  foo();
  if (a[0][0] == 3 && a[N-1][N-1] == 3) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0][0], (int )a[N-1][N-1]);
  }
  return 0;
}
