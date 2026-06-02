#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      extern  int   ia;
int main() { 
      int ib[50], ic[50], ier;
      int i, loop=50;
      ia = 99;
      for (i=0; i<loop; i+=1) ib[i] = 0;
#pragma omp parallel
{
#pragma omp for firstprivate(ia)
      for (i=0; i<loop; i+=1){ 
          ib[i] = ia * i;
      }
}
      for (i=0; i<loop; i+=1) ic[i] = 0;
      for (i=0; i<loop; i+=1){ 
          ic[i] = ia * i;
      }
      ier = 0;
      for (i=0; i<loop; i+=1){ 
          if (ib[i]!=ic[i]) {
              printf( "i=",i," ib[i]=",ib[i]," ic[i]=",ic[i]);
              ier=ier+1;
          }
      }
      printf( "----- omp_PARALLEL_DO_003i.c --");
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
