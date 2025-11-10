#include "000.h"





void foo(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i+=1) {
    a[i] = my_fun_ref(b[i]);
  }
}
void foo2(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i+=1) {
    a[i] = my_fun_none(b[i]);
  }
}



void foo3(void)
{
  long i;
#pragma omp simd
  for(i=0;i<N;i+=1) {
    a[i] = my_fun_val(b[i]);
  }
}

void foo4(void)
{
  int i;
#pragma omp simd
  for(i=0;i<N;i+=1) {
    a[i] = my_fun_uval(i);
  }
}
