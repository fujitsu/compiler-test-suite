#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

  extern  float a,c;
int main()
{
  float b,d;
  a=0.9876;
  b=0.0;
#pragma omp parallel reduction(&&:a)
{
  a= a && b;
}
  c=0.0;
  d=0.1;
#pragma omp parallel reduction(&&:c)
{
  c= c && d;
}
  printf(" -- omp_reduction.and.parallel1-1.c ");
  printf(" parallel reduction(&&:float) --\n");
  if(a == 0 && c == 0 ){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f\n",a,c);
  }
}

