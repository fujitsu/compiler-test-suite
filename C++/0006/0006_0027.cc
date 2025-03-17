#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

float sub(float a, float b)
{
  a = a || b;
  return a;
}

class Class {
public:
Class(int num, ...)
{
  float a,b;
  float c,d;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


  a=0.1;
  b=0.0;
#pragma omp parallel reduction(||:a)
{
  a= sub(a,b);
}
  c=0.0;
  d=0.1;
#pragma omp parallel reduction(||:c)
{
  c= sub(c,d);
}
  printf(" -- ");
  printf(" parallel reduction(||:float):function --\n");
  if(a == 1.0 && c == 1.0){
     printf(" OK \n");
  }else{
     printf(" NG \n");
     printf(" a = %f,c=%f\n",a,c);
  }

}
};
int main() {
  Class O(3, 1, 3, 5);
}

