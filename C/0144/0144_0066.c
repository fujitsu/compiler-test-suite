#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
  int i,k;
  float a,b[10];
  float c,d;
  double e,f;
  a=0.1;
  c=0.1;
  d=0.1;
  e=6.0;
  for(i=0;i<10;i++) b[i]=0.1*i;
#pragma omp parallel reduction(||:a)
{
#pragma omp for reduction(+:e) reduction(&&:c)
  for(i=0;i<10;i++){
      c= c &&  b[i];
      e = e + b[i]*i;
  }
  for(i=0;i<10;i++){
      a= a || b[i];
  }
}
  e= (long long)e;
  printf(" --  ");
  printf(" parallel + reduction(||:float) + for reduction(+,&&:double,float) --\n");
  if(a == 1.0 && c == 0.0 && e == 34){
    printf(" OK \n");
  }else{
    printf(" NG \n");
    printf("a = %f,c = %f,e = %f\n",a,c,e);
  }
}
