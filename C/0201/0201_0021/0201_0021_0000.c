#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
#include <omp.h>
int main()
{
  static long double _Complex p;
  long double _Complex pp;
#pragma omp threadprivate(p)

  p = 100 + 200.0i;
  pp = 100 + 200.0i;
#pragma omp parallel copyin(p)
    {
      if( p != pp ) abort();
    }

  puts("pass");
}

