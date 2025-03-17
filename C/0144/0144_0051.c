#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

double sub(double a,double b)
{
  a = a || b;
  return a;
}
int main()
{
  double a,b;
  double c,d;
  a=0.0;
  b=0.0;
#pragma omp parallel reduction(||:a)
{
  a= sub(a,b);
}
  c=1.1;
  d=0.01011;
#pragma omp parallel reduction(||:c)
{
  c= sub(c,d);
}
  printf(" --  ");
  printf(" parallel reduction(||:double):function --\n");
  if(a == 0.0 && c == 1.0){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f\n",a,c);
  }
}

