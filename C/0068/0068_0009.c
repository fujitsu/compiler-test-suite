#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main(){ 
      int ia, ib;
      int i, loop=50;
      ia = 0;
#pragma omp parallel for reduction(^:ia)
      for (i=0; i<loop; i+=1){ 
          ia = ia ^ (i*53);
      }
      ib = 0;
      for (i=0; i<loop; i+=1){ 
          ib = ib ^ (i*53);
      }
      printf( "-----  --\n");
      printf( "      parallel for reduction(^:ia) -----\n");
      if(ia==ib) {
         printf( "OK\n");
      }else{
         printf( "NG!  REDUCTION(^) clause is incorrect!\n");
         printf( "     ia=%d,   It must be %d\n",ia, ib);
      }
  exit (0) ;
}
