#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

class Class {
public:
  Class(int num, ...)
  {
    int i,j=1;
    int k;

    int tmp;
    va_list list;
    va_start(list, num);
    for(int I=0; I<num; ++I)
      tmp = va_arg(list, int);
    va_end( list );
    tmp++;

#pragma omp parallel private(i,k)
    {
      for(i=0; i<10; i++)
	{
#pragma omp single
#pragma omp parallel
	  {
	  }
	}
      k = 0;
      for(i=0; i<10; i++)
	{
	  k = k + j;
	}
      if (k != 10) printf("NG: k=%d\n",k);
    }
    printf("pass\n");
  }
};
int main() {
  Class O(2, 1, 2);
}
