#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

float sub(float a, float b)
{
  int i;
#pragma omp parallel shared(a)
#pragma omp for reduction(||:a)
  for(i=0;i<10;i++){
    a= a || b;
  }
  return a;
}
int main()
{
  float a,b;
  float c,d;
  a=0.0;
  b=0.0;
#pragma omp parallel
{
  a= sub(a,b);
}
  c=113.1;
  d=12.0;
#pragma omp parallel
{
  c= sub(c,d);
}
  printf(" --  ");
  printf(" parallel + for reduction(||:float):function --\n");
  if(a == 0.0 && c == 1.0){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f\n",a,c);
  }
}

