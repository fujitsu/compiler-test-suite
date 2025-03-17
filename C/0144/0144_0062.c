#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
  int i;
  float a,d;
  int b,c,e,f;
  a=0.0;
  b=1200;
  c=0;
  d=0.0;
  e=0;
  f=0;
#pragma omp parallel reduction(||:a) reduction(&&:c) reduction(||:e)
{
    a= a || b;
    c= c && d ;
    e= e || f ;
}
  printf(" --  ");
  printf(" parallel reduction(||,&&:int,double) --\n");
  if(a == 1.0 && c == 0.0 && e == 0.0){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f,e=%f\n",a,c,e);
  }
}
