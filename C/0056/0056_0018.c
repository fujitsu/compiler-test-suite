#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
      int ia;
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
      printf( "-----  -- parallel -----\n");
      if(ia == thread) {
         printf( "OK\n");
      }else{
         printf( " NG!  PARALLEL Directive is not active!\n");
         printf( "      ia=%d It must be %d\n", ia, thread);
      }
   exit (0) ;
}
