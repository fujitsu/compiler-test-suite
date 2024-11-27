#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[50], ib, ic[50], ier;
      int  loop=50;
      int i;

      ib = 0;
      for(i=0;i<50;i++)
	{
          ia[i] = 0;
	}
#pragma omp parallel for schedule(dynamic) ordered
      for (i=0; i<loop; i++){
#pragma omp ordered
	{
         ib = ib + 1;
         ia[i] = ib;
	}
#ifdef _OPENMP
       ic[i] = omp_get_thread_num() + 1;
#endif
      }
      ier = 0;
      for (i=1; i<=loop; i+=1){
         if(ia[i-1]!=i) ier=ier+1 ;
      }
      printf( "-----  --");
      printf( " parallel for schedule(dynamic) orderd -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  DO ORDERD directive is not active\n");
	 for(i=0;i<30;i++)
	   {
	     if(i==0) printf("       ia=");
	     printf( "%d ",ia[i]);
	   }
         printf("\n");
	 for(i=0;i<30;i++)
	   {
	     if(i==0) printf("       ic=");
	     printf( "%d ",ic[i]);
	   }
         printf("\n");
      }
   exit (0) ;
}
