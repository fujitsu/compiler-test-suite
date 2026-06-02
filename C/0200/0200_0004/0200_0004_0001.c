#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

void dummy(int *);

int ii = 10;
#pragma omp threadprivate(ii)

void test(void)
{

#pragma omp parallel
  {
    dummy(&ii);
    if ( ii != 10 ) abort();
  }
}
