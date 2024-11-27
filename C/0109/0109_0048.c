#include <stdio.h>
#define N 10000

float a[N];
float b[N];


#pragma omp declare simd 

float my_fun(float f)
{
  return f + 3;
}

void foo(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    a[i] = my_fun(b[i]);
  }
}

int main(void)
{
  foo();
  if (a[0] == 3 && a[N-1] == 3) {
    puts("PASS");
  }
  else {
    printf("NG %g %g \n", a[0], a[N-1]);
  }
  return 0;
}
