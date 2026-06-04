#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
  static double *p;
#pragma omp threadprivate(p)

  p = malloc(sizeof(double));

  *p = 100;
#pragma omp parallel copyin(p)
    {
      if( *p != 100 ) abort();
    }

  free(p);
  puts("pass");
}

