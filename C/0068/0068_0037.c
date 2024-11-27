#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      long int ia, ib, it;
      int  i,thread=4;
      ia = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel reduction(^:ia) private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num();
#endif

      ia = (it+9)*713;
}
      ib = 0;
      for (i=0; i<thread; i+=1){ 
          ib = ib^((i+9)*713 );
      }
      printf("-----  --");
      printf(" parallel reduction(ieor:ia) private(it) -----\n");
      if(ia==ib) {
         printf( "OK\n");
      }else{
         printf( "NG!  REDUCTION(^) clause is incorrect!\n");
         printf( "     ia=%d,  It must be %d\n",ia, ib);
      }
      exit (0) ;
      }
