#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[150], ic1, ic2;
      int i, loop=150;
      ic1=0;
      for (i=0; i<loop; i+=1){ 
         ia[i]=13*i/7+(17*i/9)*pow(-1,fmod(i,2));
      }
#pragma omp parallel
{
#pragma omp for firstprivate(ia) reduction(+:ic1)
      for (i=0; i<loop; i+=1){ 
         ic1 = ic1 + ia[i];
      }
}
      ic2=0;
      for (i=0; i<loop; i+=1){ 
         ic2 = ic2 + ia[i];
      }
      printf("-----  --");
      printf(" parallel");
      printf(" for firstprivate(ia) reduction(+:ic1) -----\n");
      if(ic1==ic2) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE + REDUCTION is incorrect\n");
         printf( "       ic1=%d,  ic2=%d\n",ic1,ic2);
      }
      exit (0) ;
      }
