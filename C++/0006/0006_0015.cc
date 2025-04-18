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
      int ia[15000], ib, it, ier;
      int  loop=15000;
      int  i;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


      for(i=0; i<loop; i++)
	{
          ia[i] = 0;
	}
      ib = 0;
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for
      for(i=0; i<loop; i++)
	{
#pragma omp critical
{
          ib = ib + 1;
          ia[ib-1]=it;
}
	}
}
      ier=0;
      for(i=0; i<loop; i++)
	{
          if(ia[i]==0) ier=ier+1;
        }
      printf( "-----");
      printf( " parallel private(it) do critical -----\n");
      if(ib==loop && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  CRITICEL Directive is not active!\n");
         printf( "     ib=%d  It must be %d\n", ib,loop);
         printf( "     ier=%d\n", ier);
      }
   exit (0) ;
}
};
int main() {
  Class O(2, 2, 4);
}
