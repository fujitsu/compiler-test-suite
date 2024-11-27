#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia, ib[150], ic[150], ier;
      int i, loop=150, loop5=5;
      int ih[5], ii[5];
      for (i=0; i<loop; i+=1){ 
        ib[i] = 0;
      }
      for (i=0; i<loop5; i+=1){ 
         ih[i] = i*2;
      }
#pragma omp parallel
{
#pragma omp for lastprivate(ia,ih)
      for (i=0; i<loop; i+=1){ 
         ia = fmod(i,loop5);
         ih[ia] = i+100;
         ib[i] = ih[ia];
      }
}
      ier = 0;
      for (i=0; i<loop; i+=1){ 
         ia = fmod(i,loop5);
         ii[ia] = i+100;
         ic[i] = ii[ia];
         if (ib[i]!=ic[i]){
            ier=ier+1;
            printf( "i=%d, ib[%d]=%d, ic[%d]=%d\n",i,ib[i],i,ic[i]);
         }
      }
      for (i=0; i<loop5; i+=1){ 
         if (ih[i]!=ii[i]) {
            ier=ier+1;
            printf( "i=%d, ih[%d]=%d, ii[%d]=%d\n",i,ih[i],i,ii[i]);
         }
      }
      printf( "-----  --");
      printf( " parallel");
      printf( " for lastprivate(ia,ih) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  LASTPRIVATE clause is not active!\n");
         printf( "     ib=%d\n",ib);
         printf( "     ier=%d\n",ier);
         printf( "     ih=%d\n",ih);
         printf( "     ii=%d\n",ii);
      }
      exit (0) ;
      }
