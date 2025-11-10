#include "000.h"







arg_type n = 3;
arg_type *p = &n;

void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i+=1) {
    a[i] = my_fun(b[i], *p);
  }
}
