#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif


int lto_sub_25()
{
      int ia, ib[10], ier;
      int  loop = 10, thread=4;
      int  i;

      ia = 9;
      for(i=0;i<10;i++)
	{
          ib[i] = 9;
	}

#ifdef _OPENMP
    thread = omp_get_max_threads();
#else
    thread = 1;
#endif

#pragma omp parallel default(none) shared(ib,thread) private(ia)
{
#ifdef _OPENMP
    ia = omp_get_thread_num() ;
#else
    ia = 0;
#endif
      ib[ia] = (ia + 1) ;
}
      ier = 0;
      for (i=0; i<thread; i++)
      {
          if (ib[i]!=(i+1)) ier=ier+1 ;
      }
      for (i=thread; i<loop; i++)
      {
          if (ib[i]!=9) ier=ier+1 ;
      }

      printf( " parallel default(private) shared(ib) -----\n");
      if(ia==9 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  DEFAULT(PRIVATE) clause is not active!\n");
         printf( "     ia=%d It must be 9\n",ia);
	 for(i=0;i<10;i++)
	   {
	     if(i==0) printf("     ib=");
	     printf("%d ",ib[i]);
	   }
         printf("\n");
      }
   return (0) ;
}
