#include <stdio.h>

#define N 10000

typedef signed int out_type_t;
typedef signed int in_type_t;
out_type_t a[N];
in_type_t  b[N];

out_type_t foo(in_type_t );

void test(void)
{
  long i;
#pragma omp simd 
  for(i=0;i<N;i++) {
    a[i] = foo(b[i])+1;
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

out_type_t foo(in_type_t f)
{
  return f+1;
}
