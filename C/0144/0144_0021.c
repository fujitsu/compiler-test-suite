#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

double sub(double a,double b)
{
  int i;
#pragma omp parallel shared(a)
#pragma omp for reduction(&&:a)
  for(i=0;i<10;i++){
    a= a && b;
  }
  return a;
}
int main()
{
  double a,b;
  double c,d;
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
  printf(" parallel + for reduction(&&:double):function --\n");
  if(a == 0 && c == 1 ){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f\n",a,c);
  }

}

