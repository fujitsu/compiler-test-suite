#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib, ic, i , j , iw ;

      memset(ia,0,sizeof(ia));
      ib = 0;
#pragma omp parallel private(ic)
{
#ifdef _OPENMP
    ic = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(dynamic,1)
      for (i=0; i<50; i+=1){ 
         ia[i] = ic;
         for (j=0; j<10000; j+=1){ 
           iw=iw+j;
           if(iw%100==0) iw=0 ;
         }
      }
}
      ib = 0;
      ic = 0;
      for (i=0; i<50; i+=1){ 
         if (ia[i]!=ic) {
            ib=ib+1;
            ic=ia[i];
         }
      }
      printf( "      parallel private(ic)");
      printf( "      do schedule(dynamic,1) -----");
      if(ib>=1) {
         printf( "OK\n");
      }else{
         printf( "NG!  SCHEDULE clause is not active?");
         printf( "     But, result will chainge runtime.");
         printf( "     Prease check againe, with same object.");
         printf( "     ib=",ib);
         printf( "     ia=",ia);
      }
      exit (0) ;
      }
