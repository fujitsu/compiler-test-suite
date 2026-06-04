#include <stdio.h>
#include <stdlib.h>
#include <omp.h>
#include <complex.h>
int main()
{
  int i;
  static double _Complex *p;
  static double _Complex pp[128];
#pragma omp threadprivate(pp, p)

  p = malloc(sizeof(double _Complex)*128);
  for(i=0;i<128;i++) {
    p[i] = i + 200.0i;
    pp[i] = i + 200.0i;
  }
  
#pragma omp parallel copyin(pp, p) private(i)
  for(i=0;i<128;i++) {
    if( p[i] != pp[i] ) abort();
  }

  free(p);
  puts("pass");
}


