#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[50], ib[50], ic, id, it, ier;
      int  loop=50;
      int  i;

      for(i=0; i<loop; i++)
	{
          ia[i] = 0;
	}
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(guided,loop)
      for(i=0; i<loop; i++)
	{
          ia[i] = it;
        }
}
      for(i=0; i<loop; i++)
	{
          ib[i] = 0;
	}
      ic=0;
      id=0;
      for(i=0; i<loop; i++)
	{
          if(ia[i]!=id || ic==0)
	    {
              ic=ic+1;
              id=ia[i];
            }
         ib[ic-1]=ib[ic-1]+1;
        }
      ier=0;
      i=1;
      while(ib[i+1]!=0 || i>=(loop-1)) {
          if ( ib[i]<ib[i+1] ) ier=ier+1 ;
          i=i+1;
      }
      if ( ib[0]!=loop ) ier=ier+1 ;
      if ( i > 1 ) ier=ier+1 ;
      printf( "-----  --");
      printf( " parallel private(it)");
      printf( " do schedule(guided,loop) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  SCHEDULE(GUIDED) clause is incorrect\n");
	 for(i=0; i<loop; i++)
	   {
             if(i==0) printf( "     ia=");
	     printf("%d ", ia[i]);
	   }
         printf( "\n");
	 for(i=0; i<loop; i++)
	   {
             if(i==0) printf( "     ib=");
	     printf("%d ", ib[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}
