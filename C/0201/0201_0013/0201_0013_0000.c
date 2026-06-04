#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
  int i;
  static long double *p;
  long double pp[128];
#pragma omp threadprivate(p)

  p = malloc(sizeof(long double)*128);
  for(i=0;i<128;i++) {
    p[i] = i;
    pp[i] = i;
  }
  
#pragma omp parallel copyin(p) private(i)
  for(i=0;i<128;i++) {
    if( p[i] != pp[i] ) abort();
  }

  free(p);
  puts("pass");
}


