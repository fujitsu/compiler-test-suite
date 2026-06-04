#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
  static unsigned *p;
  unsigned pp;
#pragma omp threadprivate(p)

  p = malloc(sizeof(unsigned));

  *p = 100;
  pp = 100;
#pragma omp parallel copyin(p)
    {
      if( *p != pp ) abort();
    }

  free(p);
  puts("pass");
}

