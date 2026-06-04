#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

extern int ia;
int main(){ 
      int ib[50], ier;
      int j, loop=50;
      ia = 99;
      ier = 0;
#pragma omp parallel for private(ia)
      for (j=0; j<loop; j+=1){ 
          ia = j;
          ib[j] = ia;
      }
      if(ia!=99) ier=ier+1;
      for (j=0; j<loop; j+=1){ 
          if (ib[j]!=j) ier=ier+1;
      }
      printf( "----- omp_PARALLELDO_002i.c --\n");
      printf( "      parallel for private(ia) ------\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ia=%d,  It must be 99\n",ia);
         printf( "     ib=%d\n",ib);
      }
      exit (0) ;
}