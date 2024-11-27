#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ib[150], ic[150], id, ier;
      int i, loop=150, loop5=5;
      long int ih8[5], ii8[5];
      short int ih2[5], ii2[5];
      for (i=0; i<loop; i+=1) ib[i] = 0;
      for (i=0; i<loop5; i+=1){ 
         ih8[i] = i*2;
         ih2[i] = i;
      }
#pragma omp parallel
{
#pragma omp for lastprivate(ih8,ih2,id)
      for (i=0; i<loop; i+=1){ 
         id = fmod(i,loop5);
         ih8[id] = i+100;
         ih2[id] = i+50;
         ib[i] = ih8[id]+ih2[id];
      }
}
      ier = 0;
      for (i=0; i<loop; i+=1){ 
         id = fmod(i,loop5);
         ii8[id] = i+100;
         ii2[id] = i+50;
         ic[i] = ii8[id]+ii2[id];
         if (ib[i]!=ic[i]) {
            ier=ier+1;
         }
      }
      for (i=0; i<loop5; i+=1){ 
         if (ih8[i]!=ii8[i]) {
            ier=ier+1;
         }
         if (ih2[i]!=ii2[i]) {
            ier=ier+1;
         }
      }
      printf( "-----  --");
      printf( " parallel");
      printf( " for lastprivate(ih8,ih2,id) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  LASTPRIVATE clause is not active!\n");
         printf( "     ib=%d\n",ib);
         printf( "     ier=%d\n",ier);
         printf( "     ih8=%d\n",ih8);
         printf( "     ii8=%d\n",ii8);
         printf( "     ih2=%d\n",ih2);
         printf( "     ii2=%d\n",ii2);
      }
      exit (0) ;
      }
