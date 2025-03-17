#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#ifdef _OPENMP
#include <omp.h>
#endif

double sub(double a, double b)
{
  a = a || b;
  return a;
}

class Class {
public:
Class(int num, ...)
{
  double a,b,c,d;


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
  c=0.0;
  d=0.1;
#pragma omp parallel
{
#pragma omp sections reduction(||:a)
 {
#pragma omp section
  {
  a= sub(a,b);
  }
#pragma omp section
  {
  c= sub(c,d);
  }
 }
#pragma omp single
  printf("a = %f, c = %f\n",a,c);
}

}
};
int main() {
  Class O(4, 3, 4, 1, 2);
}

