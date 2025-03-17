#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
  int i;
  float a,b;
  float c,d,e,f;
  a=3.432;
  b=0;
  c=4667;
  d=0.0000036;
  e=0.000000000001;
  f=1000.0;
#pragma omp parallel reduction(||:a) reduction(&&:c) reduction(||:e)
{
    a= a || b;
    c= c && d ;
    e= e || f ;
}
  printf(" --  ");
  printf(" parallel + sections reduction(||:double):function --\n");
  if(a == 1.0 && c == 1.0 && e == 1.0){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f,e=%f\n",a,c,e);
  }

}
