#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib, ic, it, i;
      int inc=2;

      memset(ia,0,sizeof(ia));
      ib = 0;
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(static,50)
      for (i=0; i<50; i+=inc){ 
         ia[i] = it;
      }
}
      ib = 0;
      ic = 0;
      for (i=0; i<50; i+=inc){ 
         if (ia[i]!=ic) {
             ib=ib+1;
             ic=ia[i];
         }
      }
      printf( "      parallel private(it)");
      printf( "      do schedule(static,loop) -----");
      if(ib==1) {
         printf( "OK\n");
      }else{
         printf( "NG!  SCHEDULE clause is not active!");
         printf( "     ib=",ib," It must be 1");
         printf( "     ia=",ia);
      }
      exit (0) ;
      }
