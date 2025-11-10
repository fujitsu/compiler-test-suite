#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif












int lto_sub_17(){
      int ia, ib[50], ier;
      int i, loop=50;
      ia = 0;
#pragma omp parallel for lastprivate(ia)
      for (ia=0; ia<loop; ia+=1){ 
          ib[ia] = ia;
      }
      ier = 0;
      for (i=0; i<loop; i+=1){ 
          if (ib[i]!=i) ier=ier+1;
      }

      printf( "      parallel for lastprivate(ia) -----\n");
      if(ier==0 && ia==loop) {
         printf( "OK\n");
      }else{
         printf( "NG!  LASTPRIVATE clause is not active!\n");
         printf( "     ia=%d,  It must be %d\n",ia,loop+1);
         printf( "     ier=%d\n",ier);
         printf( "     ib=%d\n",ib);
      }
  return (0) ;
}
