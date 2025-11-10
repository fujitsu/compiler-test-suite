#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif


int lto_sub_19()
{
      int ia;
      int  thread=4;
      int i;

      ia = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#else
    thread = 0;
#endif
#pragma omp parallel
   {
#pragma omp atomic
      ia ++;
   }

      if(ia == thread) {
         printf( "OK\n");
      }else{
         printf( " NG!  PARALLEL Directive is not active!\n");
         printf( "      ia=%d It must be %d\n", ia, thread);
      }
   return (0) ;
}
