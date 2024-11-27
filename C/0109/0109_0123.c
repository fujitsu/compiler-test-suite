#include <stdio.h>

#define N 10000

typedef double out_type_t;
typedef double in_type_t;
out_type_t a[N];
in_type_t  b[N];

void foo(in_type_t , int i);

void test(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    foo(b[i]+1, i);
  }
}

int main(void)
{
  int i;
  for(i=0;i<N;i++) {
    b[i] = i;
  }
  test();
  if (a[0] == 2 && a[N-1] == N+1) {
    puts("PASS");
  }
  else {
    printf("NG %g %g \n", (double )a[0], (double )a[N-1]);
  }
  return 0;
}

void foo(in_type_t f, int i)
{
  a[i] =  f+1;
}
