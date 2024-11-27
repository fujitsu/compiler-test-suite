#define N 10000

typedef float _Complex res_type;
typedef float arg_type;

res_type a[N] __attribute__ ((aligned (16)));
arg_type b[N] __attribute__ ((aligned (16)));


#pragma omp declare simd

res_type my_fun(arg_type f)
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

#include <stdio.h>
int main()
{
  long i;
  for(i=0;i<N;i++) {
    b[i] = i;
  }
  foo();
  if (a[0] == 3 && a[N-1] == N+2) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
}
