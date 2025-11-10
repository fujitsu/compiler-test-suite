#include "000.h"





void foo(res_type *a, long n)
{
  long i, j=0;
#pragma omp simd
  for(i=0;i<n;i++) {
    my_fun(a[i], j);
    j++;
  }
}
