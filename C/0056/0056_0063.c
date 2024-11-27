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
#pragma omp parallel reduction(||:a)
{
  a= a || b;
}
  c=0.0;
  d=0.1;
#pragma omp parallel reduction(||:c)
{
  c= c || d;
}
  printf(" --  ");
  printf(" parallel reduction(||:float) --\n");
  if(a == 1.0 && c == 1.0){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f\n",a,c);
  }
}

