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
  float a,b;
  float c,d;
  a=0.1;
  b=0.0;
#pragma omp parallel reduction(&&:a)
{
  a= sub(a,b);
}
  c=0.0;
  d=0.1;
#pragma omp parallel reduction(&&:c)
{
  c= sub(c,d);
}
  printf(" --  ");
  printf(" parallel reduction(&&:float):function --\n");
  if(a == 0.0 && c == 0.0 ){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f\n",a,c);
  }
}

