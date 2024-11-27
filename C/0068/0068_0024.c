#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main(){ 
      int ia, ib, ic, it;
      int i, thread=4;
      ia = 100;
      ic = 10;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel reduction(-:ia) private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num();
#endif
      ia = ia - ic - it;
}
      ib = 100;
      for (i=0; i<thread; i+=1){ 
          ib = ib -ic - i;
      }
      printf( "-----  --");
      printf( " parallel reduction(-:ia) private(it) -----\n");
      if(ia==ib) {
         printf( "OK\n");
      }else{
         printf( "NG!  REDUCTION(-) clause is incorrect!\n");
         printf( "     ia=%d,   It must be \n",ia, ib);
      }
  exit (0) ;
}
