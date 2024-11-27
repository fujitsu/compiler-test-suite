#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib[50], ic[50], ier;
      int i, loop=50;
      for (i=0; i<loop; i+=1){ 
         ic[i] = 0;
         ib[i] = 0;
         ia[i] = i;
      }
#pragma omp parallel
{
#pragma omp for firstprivate(ia)
      for (i=0; i<loop; i+=1){ 
         ib[i] = ia[i]*11;
      }
}
      for (i=0; i<loop; i+=1){ 
         ic[i] = i*11;
      }
      ier = 0;
      for (i=0; i<loop; i+=1){ 
         if (ib[i]!=ic[i]) {
            printf( "i=%d, ib[%d]=%d, ic[i]=%d\n",i,i,ib[i],i,ic[i]);
            ier=ier+1;
         }
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
