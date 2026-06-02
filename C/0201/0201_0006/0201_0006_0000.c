#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
  static int *p;
#pragma omp threadprivate(p)

  p = malloc(sizeof(int));

  *p = 100;
#pragma omp parallel copyin(p)
    {
      if( *p != 100 ) abort();
    }

  free(p);
  puts("pass");
}

