#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{

  double a,b;
  double c,d;
  a=0.0;
  b=0.0;
#pragma omp parallel reduction(||:a)
{
  a= a || b;
}
  c=0.009800321;
  d=45.6;
#pragma omp parallel reduction(||:c)
{
  c= c || d;
}
  printf(" --  ");
  printf(" parallel reduction(||:double) --\n");
  if(a == 0.0 && c == 1.0){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f\n",a,c);
  }
}

