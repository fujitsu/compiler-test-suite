#include <complex.h>

#define N 16

typedef double _Complex res_type;
typedef double _Complex arg_type;

res_type a[N+1] __attribute__ ((aligned (16)));
arg_type b[N+1] __attribute__ ((aligned (16)));


#pragma omp declare simd

res_type my_fun(arg_type f)
{
  return f + (3 + (-3) * I);
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
    b[i] = i + (-i) * I;
  }
  foo();
  if (a[0] == (3 + (-3) * I) &&
      a[1] == (4 + (-4) * I) &&
      a[N-2] == (N+1 + (-(N+1) * I)) &&
      a[N-1] == (N+2 + (-(N+2) * I)) &&
      a[N] == (0 + 0 * I)) {
    puts("PASS");
  }
  else {
    for(i=0;i<N;i++) {
      printf("NG %d %d \n", (int )creal(a[i]), (int )cimag(a[i]));
    }
  }
}
