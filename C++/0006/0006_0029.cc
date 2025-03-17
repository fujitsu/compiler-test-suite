#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

class Class {
public:
Class(int num, ...)
{
  int i;
  float a,b[10];
  float c;
  double e;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


  a=0.1;
  c=0.1;
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
  printf(" -- ");
  printf(" parallel + reduction(||:float) + for reduction(+,&&:double,float) --\n");
  if(a == 1.0 && c == 0.0 && e == 34){
    printf(" OK \n");
  }else{
    printf(" NG \n");
    printf("a = %f,c = %f,e = %f\n",a,c,e);
  }
}
};
int main() {
  Class O(3, 1, 4, 2);
}
