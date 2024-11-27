#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[50], ib, ic, it;
      int  loop=50, thread=4;
      int  i;


      for(i=0;i<50;i++)
	{
          ia[i] = 0;
	}

      ib = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif

#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(static)
      for(i=0; i<loop; i++)
        {
          ia[i] = it;
        }
}
      ib = 0;
      ic = 0;
      for(i=0; i<loop; i++)
	{
          if(ia[i] != ic)
	    {
              ib=ib+1;
              ic=ia[i];
            }
        }
      printf( "-----  --");
      printf( " parallel private(it)");
      printf( " do schedule(static) -----\n");
      if(ib==thread) {
         printf( "OK\n");
      }else{
         printf( "NG!  SCHEDULE clause is not active!\n");
         printf( "     ib=%d It must be %d\n",ib,thread);
	 for(i=0;i<50;i++)
	   {
             if(i==0) printf( "     ia=");
	     printf("%d ",ia[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}
