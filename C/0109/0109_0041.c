#include <complex.h>

#define N 10000

typedef float _Complex res_type;
typedef float _Complex arg_type;

long long      m[N+1] __attribute__ ((aligned (16)));
res_type a[N+1] __attribute__ ((aligned (16)));
arg_type b[N+1] __attribute__ ((aligned (16)));


#pragma omp declare simd inbranch

res_type my_fun(arg_type f)
{
  return f + (3 + (-3) * I);
}

void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i++) {
    if (m[i]) {
      a[i] = my_fun(b[i]);
    }
  }
}

#include <stdio.h>
int main()
{
  long i;
  for(i=0;i<N;i++) {
    b[i] = i + (-i) * I;
    m[i] = i % 3;
  }
  foo();
  if (a[0] == (0 + (-0) * I) &&
      a[1] == (4 + (-4) * I) &&
      a[N-2] == (N+1 + (-(N+1) * I)) &&
      a[N-1] == (0 + (-(0) * I)) &&
      a[N] == (0 + 0 * I)) {
    puts("PASS");
  }
  else {
    for(i=0;i<N;i++) {
      printf("NG %d %d \n", (int )creal(a[i]), (int )cimag(a[i]));
    }
  }
}
