#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

double sub(double a, double b)
{
  a = a || b;
  return a;
}
int main()
{
  double a,b,c,d;
  a=0.0;
  b=0.0;
  c=1.0;
  d=1.0;
#pragma omp parallel
{
#pragma omp sections reduction(||:a)
 {
#pragma omp section
  {
  a= sub(a,b);
  }
#pragma omp section
{
  c= sub(c,d);
  }
 }
#pragma omp single
  printf("a = %f, c = %f\n",a,c);
}
}

