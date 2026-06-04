#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
int main()
{
  int i;
  static double *p;
#pragma omp threadprivate(p)

  p = malloc(sizeof(double)*128);
  for(i=0;i<128;i++) 
    p[i] = i;
  
#pragma omp parallel copyin(p) private(i)
  for(i=0;i<128;i++) {
    if( p[i] != i ) abort();
  }

  free(p);
  puts("pass");
}


