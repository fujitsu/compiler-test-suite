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
      int  ia[150], ib[10], ic[10], it, ier;
      int  loop=150, thread=4;
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
      for(i=0; i<10; i++)
	{
          ib[i] = 0;
          ic[i] = 0;
	}
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif

#pragma omp master
{
      for(i=0; i<loop; i++)
      {
         ia[i] = i*19/7+i*13/3*(pow((-1),(i%2)));
      }
}
      ib[it-1]=ia[loop-1];
#pragma omp barrier
      ic[it-1]=ia[loop-1];
}
      ier=0;
      for(i=0; i<thread; i++)
      {
          if(ic[i]!=ia[loop-1]) ier=ier+1;
      }
      printf( "------");
      printf( " parallel private(it)");
      printf( " master barrier -----\n");
      if ( ier==0 ) {
          printf( "OK\n");
      }else{
          printf( "NG!  BARRIER directive not active!\n");
	  for(i=0; i<10; i++)
	    {
              if(i==0) printf( "     before BARRIER=");
	      printf("%d ", ib[i]);
	    }
          printf( "\n");
	  for(i=0; i<10; i++)
	    {
              if(i==0) printf( "      after BARRIER=");
	      printf("%d ", ic[i]);
	    }
          printf( "\n");
      }
   exit (0) ;
}
};
int main() {
  Class O(4, 4, 3, 2, 1);
}
