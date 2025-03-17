#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

float sub(float a,float b)
{
  a = a && b;
  return a;
}
int main()
{
  float a,b,c,d;
  a=0.1;
  b=0.0;
  c=0.0;
  d=0.1;
#pragma omp parallel
{
#pragma omp sections reduction(&&:a)
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

