#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia, ib, ic, id;
      int it;
      int i, ith=4;
      ia=19;
      ib=19;
      ic=2;
      id=2;
#ifdef _OPENMP
    ith=omp_get_max_threads();
#endif
#pragma omp parallel reduction(-:ia) reduction(*:ic) private(it)
{
#ifdef _OPENMP
    it=omp_get_thread_num();
#endif
      ia=ia-it*7*pow((-1),it);
      ic=ic*it*2*pow((-1),it);
}
      for (i=0; i<ith; i+=1){ 
         ib=ib-i*7*pow((-1),i);
         id=id*i*2*pow((-1),i);
      }
      printf( "-----  --");
      printf( " parallel reduction(-:ia) reduction(*:ic) private(it) -----\n");
      if(ia==ib && ic==id){
         printf( "OK\n");
      }else{
         printf( "NG!  REDUCTION clause is incorrect!\n");
         printf( "     ia=%d,  It must be %d\n", ib);
         printf( "     ic=%d,   It must be %d\n", id);
      }
  exit (0) ;
}
