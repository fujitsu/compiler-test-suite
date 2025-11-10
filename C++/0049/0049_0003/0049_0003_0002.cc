#include "000.h"



void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i+=1) {
    a[i] = my_fun(b[i], 3);
  }
}
