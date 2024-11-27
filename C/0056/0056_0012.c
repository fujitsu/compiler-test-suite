#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ib[50], ic[10], icnt;
      int  loop=50, thread=4;
      int i,j;

      for(i=0;i<50;i++)
	{
          ib[i] = 0;
	}

#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel for
      for (j=1; j<=loop; j+=1){
#ifdef _OPENMP
       ib[j-1] = omp_get_thread_num() + 1;
#endif
      }

      for(i=0;i<10;i++)
	{
          ic[i] = 0;
	}
      for (j=1; j<=loop; j+=1){
          for (i=1; i<=thread; i+=1){
              if (ib[j-1]==i) ic[i-1]=ic[i-1]+1;
          }
      }
      icnt=0;
      for (i=0; i<thread; i+=1){
          icnt = icnt + ic[i];
      }
      printf( "-----  --");
      printf( " parallel for ------\n");
      if(icnt==loop) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     icnt=%d It must be %d\n", icnt, loop);
         for(i=0;i<10;i++)
           {
             if(i==0) printf("      ic=");
             printf( "%d ",ic[i]);
           }
         printf( "\n");
         for(i=0;i<50;i++)
           {
             if(i==0) printf("      ib=");
             printf( "%d ",ib[i]);
           }
         printf( "\n");
      }
   exit (0) ;
}
