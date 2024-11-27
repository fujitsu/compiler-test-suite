#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      void sub(int ia,int it)
      {
      ia = ia * it;
      return;
      }
int main() { 
      int ia, ib, it;
      int i, thread=4;
      ia = 3;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel reduction(*:ia) private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num();
#endif
      sub (ia, it);
}
      ib = 3;
      for (i=0; i<thread; i+=1){ 
          sub (ib, i);
      }
      printf("-----  --");
      printf(" parallel reduction(*:ia) private(it) -----\n");
      if(ia==ib) {
         printf( "OK\n");
      }else{
         printf( "NG!  REDUCTION(*) clause is incorrect!\n");
         printf( "     ia=%d,   It must be \n",ia, ib);
      }
      exit (0) ;
      }
