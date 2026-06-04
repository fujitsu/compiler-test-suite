#include <stdio.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

  extern  double d_a, d_c, d_e;
int main()
{
  int i;
  double d_b, d_d,d_f;
  d_a=0.0;
  d_b=0.1;
  d_c=0.0;
  d_d=0.0;
  d_e=0.0;
  d_f=0.0;
#pragma omp parallel reduction(||:d_a) reduction(&&:d_c) reduction(||:d_e)
{
    d_a= d_a || d_b;
    d_c= d_c && d_d ;
    d_e= d_e || d_f ;
}
  printf(" -- omp_reduction.test1-1.c ");
  printf(" parallel + sections reduction(||:float):function --\n");
  if(d_a == 1.0 && d_c == 0.0 && d_e == 0.0){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f,e=%f\n",d_a,d_c,d_e);
  }
}
