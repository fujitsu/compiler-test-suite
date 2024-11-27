#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#ifdef _OPENMP
#include <omp.h>
#endif

void sub (int *);
int main()
{
      int ia;
      int  thread=4;

      ia = 0;

#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif

#pragma omp parallel
{
      sub(&ia);
}
      printf( "-----  -- parallel --------------\n");
      if(ia == thread) {
         printf( "OK\n");
      }else{
         printf( " NG!  PARALLEL Directive is not active!\n");
         printf( "      ia=%d  It must be %d\n", ia, thread);
      }
   exit (0) ;
}

void sub (int *ia)
{
#pragma omp atomic
      *ia +=1;
      return;
}
