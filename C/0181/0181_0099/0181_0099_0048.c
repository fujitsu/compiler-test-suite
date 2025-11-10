#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif


int lto_sub_48()
{
      int ia[10], ib[10], ic, it, ier;
      int  loop=10, loop2=90000, thread=4;
      int  i;

      for(i=0; i<loop; i++)
	{
          ia[i] = 0;
          ib[i] = 0;
	}
#ifdef _OPENMP
    thread = omp_get_max_threads();
#else
    thread = 1;
#endif
#pragma omp parallel sections private(i,it)
{
#pragma omp section
{
      for(i=0; i<loop2; i++)
      {
          ib[0]=ib[0]+1;
      }
#ifdef _OPENMP
    it = omp_get_thread_num() ;
#else
    it = 0;
#endif
      ia[it] = ia[it] + (it+1);
}
#pragma omp section
{
      for(i=0; i<loop2; i++)
      {
          ib[1]=ib[1]+1;
      }
#ifdef _OPENMP
    it = omp_get_thread_num() ;
#endif
      ia[it] = ia[it] + (it+1);
}
#pragma omp section
{
      for(i=0; i<loop2; i++)
      {
          ib[2]=ib[2]+1;
      }
#ifdef _OPENMP
    it = omp_get_thread_num() ;
#endif
      ia[it] = ia[it] + (it+1);
}
}
      ic = 0;
      ier = 0;
      for(i=0; i<thread; i++)
      {
          ic=ic+ia[i]/(i+1);
      }
      for (i=thread; i<loop; i++)
      {
          if(ia[i]!=0) ier=ier+1;
      }
      for (i=0; i<3; i++)
      {
          if (ib[i]!=loop2) ier=ier+1;
      }

      printf( " parallel sections private(it) ----\n");
      if( ic==3 && ier==0 ){
         printf( "OK\n");
      }else{
         printf( "NG!  SECTIONS clause is not active\n");
         printf( "     ic=%d  It must be 3\n",ic);
	 for(i=0; i<10; i++)
	   {
             if(i==0) printf( "     ia=");
	     printf("%d ",ia[i]);
	   }
         printf( "\n");
	 for(i=0; i<10; i++)
	   {
             if(i==0) printf( "     ib=");
	     printf("%d ",ib[i]);
	   }
         printf( "\n");
      }
   return (0) ;
}
