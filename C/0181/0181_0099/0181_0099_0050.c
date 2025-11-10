#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif


int lto_sub_50()
{
      int  ia[150], ib[10], ic[10], it, ier;
      int  loop=150, thread=4;
      int  i;

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
#else
    thread = 1;
#endif
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#else
    it = 1;
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

      printf( " parallel private(it)");
      printf( " barrier -----\n");
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
   return (0) ;
}
