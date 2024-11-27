#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      char ia, ib, ic;
      int  i,it;
      int  thread=4;
      ia = 1;
      ib = 1;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel reduction(&:ia) private(ic,it)
{
#ifdef _OPENMP
    it = omp_get_thread_num();
#endif

      ic = it+3;
      if ( fmod(ic,2)==0 ) ic=ic+1;
      ia = ic;
}
      for (i=0; i<thread; i+=1){ 
          ic = i+3;
          if ( fmod(ic,2)==0 ) ic=ic+1;
          ib = ib & ic;
      }
      printf( "-----  --");
      printf( " parallel reduction(&:ia) private(ic,it) -----\n");
      if(ia==ib) {
         printf( "OK\n");
      }else{
         printf( "NG!  REDUCTION(&) clause is incorrect!\n");
         printf( "     ia=%d,   It must be %d\n",ia,ib);
      }
  exit (0) ;
}
