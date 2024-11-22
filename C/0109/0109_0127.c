#include <complex.h>
#include <assert.h>

#define N 10003

typedef float  _Complex res_type;
typedef double _Complex arg_type;

res_type a[N] __attribute__ ((aligned (16)));
arg_type b[N] __attribute__ ((aligned (16)));


#pragma omp declare simd

res_type my_fun(arg_type f)
{
  return f + (3 + 3 * I);
}

void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i++) {
    a[i] = my_fun(b[i]);
  }
}

void check(res_type (*f)(arg_type))
{
  long i;
  for(i=0;i<N;i++) {
    assert (a[i] == f(b[i]));
  }
}

#include <stdio.h>
int main()
{
  long i;
  for(i=0;i<N;i++) {
    b[i] = i + (-i) * I;
  }
  foo();
  check(my_fun);
  puts("PASS");
}