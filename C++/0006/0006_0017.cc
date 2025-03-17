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
      int ia[100], ib, im, it, ier;
      int  loop=100, loop2=10000, thread=1;
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
      im = 99;

#pragma omp parallel private(ib,it,i)
{
    it = omp_get_thread_num() + 1;
      ib=0;
      for(i=0; i<loop2; i++)
	{
          ib = ib + 1;
        }
#pragma omp master
{
      thread = omp_get_num_threads();
      if (thread > 100)
	printf("Error: omp_get_num_threads() > 100\n");

      im = it;
      for(i=0; i<loop2; i++)
	{
          ib = ib + 1;
        }
}
      ia[it-1]=ib;
}
      ier=0;
      for(i=1; i<=thread; i++)
	{
          if(i == im) {
              if(ia[i-1] != loop2*2) ier=ier+1 ;
          } else {
              if(ia[i-1] != loop2) ier=ier+1 ;
	  }
        }
      for (i=thread; i<loop; i++)
      {
          if(ia[i] != 0) ier=ier+1;
      }
      printf( "-----");
      printf( " parallel master -----\n");
      if(im-1==0 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  MASTER Directive is not active!\n");
         printf( "     im=%d\n", im);
	 for(i=0; i<loop; i++)
	   {
             if(i==0) printf( "     ia=");
	     printf("%d ", ia[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}
};
int main() {
  Class O(3, 0, 1, 2);
}
