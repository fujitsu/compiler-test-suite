#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia[50], ib, ic, iw;
      int loop=50;
      int i,j;

      ib = 0;
      for(i=0;i<50;i++)
	{
          ia[i] = 0;
	}
#pragma omp parallel for schedule(dynamic,1)
      for (i=0; i<loop; i+=1){
#ifdef _OPENMP
       ia[i] = omp_get_thread_num() + 1;
#endif
         iw=0;
         for (j=0; j<10000; j+=1){
           iw=iw+j;
           if((iw%100)==0) iw=0;
         }
      }
      ib = 0;
      ic = 0;
      for (i=0; i<loop; i+=1){
         if (ia[i]!=ic) {
            ib=ib+1;
            ic=ia[i];
         }
      }
      printf( "-----  --");
      printf( " parallel for schedule(dynamic,1) -----\n");
      if(ib>=1) {
         printf( "OK\n");
      }else{
         printf( "NG!  SCHEDULE clause is not active?\n");
         printf( "     But, result will change runtime.\n");
         printf( "     Please check again, with same object.\n");
         printf( "     ib=%d\n",ib);
	 for(i=0;i<50;i++)
	   {
	     if(i==0) printf("       ia=");
	     printf( "%d ",ia[i]);
	   }
         printf( "\n");
      }
   exit (0) ;
}
