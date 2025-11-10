#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif



int lto_sub_32()
{
      int ia, ib[50], ic[10], icnt, ier;
      int  loop=50, thread=4;
      int  i,j ;

      ia = 99;
      for(i=0;i<50;i++)
	{
          ib[i] = 0;
	}

#ifdef _OPENMP
    thread = omp_get_max_threads();
#else
    thread = 1;
#endif
#pragma omp parallel private(ia)
{
#ifdef _OPENMP
    ia = omp_get_thread_num() + 1;
#else
    ia = 1;
#endif
#pragma omp for
      for (j=0; j<loop; j++)
      {
          ib[j] = ia;
      }
}
      for(i=0;i<10;i++)
	{
          ic[i] = 0;
	}
      for (j=0; j<loop; j++)
      {
          for (i=0; i<thread; i++)
	  {
              if (ib[j]==(i+1)) ic[i]=ic[i]+1;
          }
      }
      icnt=0;
      ier=0;
      for (i=0; i<thread; i++)
      {
          icnt = icnt + ic[i];
          if (ic[i]==0) ier=ier+1;
      }

      printf( " parallel private(ia)");
      printf( " do ------\n");
      if(ia==99 && icnt==loop && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ia=%d  It must be 99\n", ia);
         printf( "     icnt=%d  It must be %d\n", icnt, loop);
      }
   return (0) ;
}
