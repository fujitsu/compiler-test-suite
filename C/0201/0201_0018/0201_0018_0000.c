#include <stdio.h>
#include <stdlib.h>
#include <complex.h>
#include <omp.h>
int main()
{
  static float _Complex p;
  float _Complex pp;
#pragma omp threadprivate(p)

  p = 100 + 200.0i;
  pp = 100 + 200.0i;
#pragma omp parallel copyin(p)
    {
      if( p != pp ) abort();
    }

  puts("pass");
}

