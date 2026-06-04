#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
  static long double *p;
  long double pp;
#pragma omp threadprivate(p)

  p = malloc(sizeof(long double));

  *p = 100;
  pp = 100;
#pragma omp parallel copyin(p)
    {
      if( *p != pp ) abort();
    }

  free(p);
  puts("pass");
}

