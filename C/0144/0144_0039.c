#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
  int i;
  double a,b;
  double c,d;
  a=0.1;
  b=0.1;
#pragma omp parallel for reduction(||:a)
  for(i=0;i<10;i++){
    a= a || b;
  }
  c=0.0;
  d=0.0;
#pragma omp parallel for reduction(||:c)
  for(i=0;i<10;i++){
    c= c || d;
  }
  printf(" --  ");
  printf(" parallel for reduction(||:double) --\n");
  if(a == 1.0 && c == 0.0){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f\n",a,c);
  }
}
