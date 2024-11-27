#define N 10000

typedef long long res_type;
typedef signed char arg_type;

res_type a[N] __attribute__ ((aligned (16)));
arg_type b[N] __attribute__ ((aligned (16)));


#pragma omp declare simd simdlen(2)

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
  arg_type tmp1 = N-1;
  arg_type tmp2 = tmp1+3;
  if (a[0] == 3 && a[N-1] == (res_type)(tmp2)) {
    puts("PASS");
  }
  else {
    printf("NG %d %d \n", (int )a[0], (int )a[N-1]);
  }
}
