#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia, ib[50], ic[50], ier;
      int i,loop=50;
      ia = 3;
      for (i=0; i<loop; i+=1){ 
          ib[i] = (i-fmod(i,30))*pow((-1),i);
      }
#pragma omp parallel
{
#pragma omp for firstprivate(ib)
      for (i=0; i<loop; i+=1){ 
          ic[i] = ia + ib[i];
      }
}
      ier = 0;
      for (i=0; i<loop; i+=1){ 
          if (ic[i]!=ia+ib[i]) ier=ier+1;
      }
      printf( "-----  --");
      printf( " parallel");
      printf( " do firstprivate(ia) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
         printf( "     ib=%d\n",ib);
         printf( "     ic=%d\n",ic);
      }
      exit (0) ;
      }
