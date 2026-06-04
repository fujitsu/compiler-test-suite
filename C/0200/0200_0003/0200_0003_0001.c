#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

void dummy(int *);

extern int ii;
#pragma omp threadprivate(ii)

void test(void)
{
#pragma omp parallel
  {
    ii = 10;
    dummy(&ii);
    if ( ii != 10 ) abort();
  }
}
