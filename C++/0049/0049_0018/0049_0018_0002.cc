#include "000.h"





void foo(res_type *a, long n)
{
  long i;
#pragma omp simd
  for(i=0;i<n;i++) {
    my_fun(a[i], i);
  }
}
