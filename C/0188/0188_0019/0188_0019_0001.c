#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif
extern int ia;
int main()
{
      int  thread=4;
      int i;

      ia = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel
   {
#pragma omp atomic
      ia ++;
   }
      printf( "----- omp_PARALLEL_001.c -- parallel -----\n");
      if(ia == thread) {
         printf( "OK\n");
      }else{
         printf( " NG!  PARALLEL Directive is not active!\n");
         printf( "      ia=%d It must be %d\n", ia, thread);
      }
   exit (0) ;
}
