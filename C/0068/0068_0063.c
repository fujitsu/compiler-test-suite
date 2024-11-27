#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      int sub (int ia)
      {
      int it;
#pragma omp parallel reduction(*:ia) private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num();
#endif
      ia = ia * it;
}
      return ia;
      }
int main() { 
      int ia, ib;
      int  i,thread=4;
      ia = 3;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
      ia = sub (ia);
      ib = 3;
      for (i=0; i<thread; i+=1){ 
          ib = ib * i;
      }
      printf( "-----  --");
      printf( " parallel reduction(*:ia) private(it) -----\n");
      if(ia==ib) {
         printf( "OK\n");
      }else{
         printf( "NG!  REDUCTION(*) clause is incorrect!\n");
         printf( "     ia=%d,   It must be %d\n",ia, ib);
      }
      exit (0) ;
      }

