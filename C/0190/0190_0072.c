#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib, ic, it, iw, i, j;
      int  st=0,inc=-2;

      memset(ia,0,sizeof(ia));
      ib = 0;
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(dynamic)
      for (i=49; i>=st; i+=inc){ 
         ia[i] = it;
         iw=0;
         for (j=0; j<10000; j+=1){ 
           iw=iw+j;
           if(iw%100==0) iw=0;
         }
      }
}
      ib = 0;
      ic = 0;
      for (i=49; i>=st; i+=inc){ 
         if (ia[i]!=ic) {
           ib=ib+1;
           ic=ia[i];
         }
      }
      printf( "      parallel private(it)");
      printf( "      do schedule(dynamic) -----");
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
