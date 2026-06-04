#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib, ic, it, i;
      int  st=0;

      memset(ia,0,sizeof(ia));
      ib = 0;
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(dynamic,50)
      for (i=49; i>=st; i-=1){ 
         ia[i] = it;
      }
}
      ib = 0;
      ic = 0;
      for (i=49; i>=st; i-=1){ 
         if (ia[i]!=ic) {
             ib=ib+1;
             ic=ia[i];
         }
      }
      printf( "      parallel private(it)");
      printf( "      do schedule(dynamic,loop) -----");
      if(ib==1) {
         printf( "OK\n");
      }else{
         printf( "NG!  SCHEDULE clause is not active!");
         printf( "     ib=",ib," It must be 1");
         printf( "     ia=",ia);
      }
      exit (0) ;
      }
