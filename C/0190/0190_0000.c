#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib, ic, it;
      int   thread=4;
      int i ;
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
      for (i=0; i<50; i+=1){ 
         ia[i] = it;
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
      printf( "      parallel private(it)\n");
      printf( "      do schedule(static) -----\n");
      if(ib==thread) {
         printf( "OK\n\n");
      }else{
         printf( "NG!  SCHEDULE clause is not active!\n");
         printf( "     ib=%d thread=%d \n",ib,thread);
      }
      exit (0) ;
      }
