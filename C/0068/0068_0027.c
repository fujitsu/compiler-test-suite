#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      char ia;
      int i,ib, ic, it;
      int  thread=4;
      ia = 10;
      ic = 2;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel reduction(-:ia) private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num();
#endif
      ia = ia - ic - fmod(it,3);
}
      ib = 10;
      for (i=0; i<thread; i+=1){ 
          ib = ib -ic - fmod(i,3);
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
