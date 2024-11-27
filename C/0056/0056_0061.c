#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{

  float a,b;
  float c,d;
  a=0.9876;
  b=0.0;
  c=0.0;
  d=0.1;
#pragma omp parallel
{
#pragma omp sections reduction(&&:a) reduction(&&:c) 
 {
#pragma omp section
  {
  a= a && b;
  }
#pragma omp section
  {
  c= c && d;
  }
 }
#pragma omp single
  printf("a = %f, c = %f\n",a,c);
}
}
