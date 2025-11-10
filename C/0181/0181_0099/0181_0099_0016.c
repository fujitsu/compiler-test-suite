#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif




















int lto_sub_16(){
      int ia, ib[50], ic[50], ier;
      int i, loop=50;
      ia = 3;
      for (i=0; i<loop; i+=1){ 
          ib[i] = (i-fmod(i,30))*pow((-1),i);
      }
#pragma omp parallel for firstprivate(ib)
      for (i=0; i<loop; i+=1){ 
          ic[i] = ia + ib[i];
      }
      ier = 0;
      for (i=0; i<loop; i+=1){ 
          if (ic[i]!=ia+ib[i]) ier=ier+1;
      }

      printf( "      parallel for firstprivate(ia) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active!\n");
         printf( "     ib=%d\n",ib);
         printf( "     ic=%d\n",ic);
         printf( "     ier=%d\n",ier);
      }
      return (0) ;
}
