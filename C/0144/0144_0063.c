#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
  int i;
  double a;
  float d;
  long long int b,f,e;
  unsigned int c;
  a=7.0;
  b=0;
  c=0;
  d=0.0006;
  e=223;
  f=0;
#pragma omp parallel reduction(||:a) reduction(&&:c) reduction(||:e)
{
    a= a || b;
    c= c && d ;
    e= e || f ;
}
  printf(" --  ");
  printf(" parallel reduction(||,&&:float,double,long long,unsigned int) --\n");
  if(a == 1.0 && c == 0 && e == 1){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%d,e=%lld\n",a,c,e);
  }
}
