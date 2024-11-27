#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[10], ib[10], ias, ibs, it;
      int  thread=4;
      int  i;

      for(i=0 ; i<10; i++)
	{
          ia[i] = 0;
          ib[i] = 0;
	}
      ias = 0;
      ibs = 0;

#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() ;
#endif
#pragma omp single
{
      ia[it]=1;
}
      ib[it]=1;
}
      for (i=0; i<thread; i++){
          if(ia[i]==1) ias=ias+1 ;
          if(ib[i]==1) ibs=ibs+1 ;
      }
      printf( "-----  --");
      printf( " parallel private(it) single -----\n");
      if ( ias==1 && ibs==thread ) {
          printf( "OK\n");
      }else{
          printf( "NG!  SINGLE directive not active!\n");
          printf( "       Single count=%d\n",ias);
          printf( "     Parallel count=%d\n",ibs);
      }
   exit (0) ;
}
