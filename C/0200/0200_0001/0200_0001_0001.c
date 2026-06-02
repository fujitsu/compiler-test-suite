#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

void dummy(int *);

void test(void)
{
  static int ii;
#pragma omp threadprivate(ii)

#pragma omp parallel
  {
    ii = 10;
    dummy(&ii);
    if ( ii != 10 ) abort();
  }
}
