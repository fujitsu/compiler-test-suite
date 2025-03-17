#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
  int i,j,k;
  float a,b[10];
  float c,d;
  double e,f;
  a=0.1;
  c=0.1;
  d=0.1;
  e=6.0;
#pragma omp parallel
{
#pragma omp for private(i) private(j)
  for(i=0;i<10;i++) b[i]= 0.001*i;
#pragma omp for reduction(||:a) reduction(&&:c) reduction(+:e) private(j)
  for(i=0;i<10;i++){
    for(j=0;j<10;j++){
      a= a || b[j];
      c= c &&  b[j];
      e = e + b[j]*i*j;
      #pragma omp flush
    }
  }
}
  e= (long long int)e;
  printf(" --  ");
  printf(" parallel + for private + for reduction(||,&&,+:float,double) --\n");
  if(a == 1.0 && c == 0.0 && e == 18){
    printf(" OK \n");
  }else{
    printf(" NG \n");
    printf("a = %f,c = %f,e = %f\n",a,c,e);
  }
}
