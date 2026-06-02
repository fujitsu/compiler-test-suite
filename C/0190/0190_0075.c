#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib, ic, it, i ;
      int  st=0,loop=50, thread=4;

      memset(ia,0,sizeof(ia));
      ib = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(static)
      for(i=st;i<loop;i++){
         ia[i] = it;
      }
}
      ib = 0;
      ic = 0;
      for(i=st;i<loop;i++){
         if (ia[i]!=ic) {
             ib=ib+1;
             ic=ia[i];
         }
      }
      printf( "      parallel private(it)");
      printf( "      do schedule(static) -----");
      if(ib==thread) {
         printf( "OK\n");
      }else{
         printf( "NG!  SCHEDULE clause is not active!");
         printf( "     ib=",ib," It must be ",thread);
         printf( "     ia=",ia);
      }
      exit (0) ;
      }
