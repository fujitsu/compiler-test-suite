#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <string.h>
#ifdef _OPENMP
#include <omp.h>
#endif

class par002s {
public:
par002s(int k,int i, int num, ...)
{

  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


    if(i) {
     k++ ;
     printf("k=%d\n",k);
 }
#pragma omp parallel
    {
#pragma omp single
	{
        i += 1;
        k += 1;
    }
    }

    if(i==2 && k==3){
	printf("OK\n");
    }
    else {
	printf("NG\n");
	printf("i=%d\n",i);
	printf("k=%d\n",k);
    }
}
};
int main()
{
    int k=1;
    par002s O(k,k, 3, 2, 3, 4);
}

