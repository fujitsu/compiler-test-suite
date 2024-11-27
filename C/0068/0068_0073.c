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
      int ih4[5], ii4[5];
      short int ih2[5], ii2[5];
      char ih1[5], ii1[5];
      for (i=0; i<loop; i+=1) ib[i] = 0;
      for (i=0; i<loop5; i+=1){ 
         ih8[i] = i*1000;
         ih4[i] = i*100;
         ih2[i] = i*10;
         ih2[i] = i;
      }
#pragma omp parallel
{
#pragma omp for lastprivate(ih8,ih4,ih2,ih1,id)
      for (i=0; i<loop; i+=1){ 
         id = fmod(i,loop5);
         ih8[id] = i+100;
         ih4[id] = i+50;
         ih2[id] = i+10;
         ih1[id] = fmod(i,127);
         ib[i] = ih8[id]+ih4[id]+ih2[id]+ih1[id];
      }
}
      ier = 0;
      for (i=0; i<loop; i+=1){ 
         id = fmod(i,loop5);
         ii8[id] = i+100;
         ii4[id] = i+50;
         ii2[id] = i+10;
         ii1[id] = fmod(i,127);
         ic[i] = ii8[id]+ii4[id]+ii2[id]+ii1[id];
      }
      for (i=0; i<loop; i+=1){ 
         if (ib[i]!=ic[i]) {
            ier=ier+1;
            printf( "i=%d, ib[%d]=%d, ic[%d]=%d\n",i,i,ib[i],i,ic[i]);
         }
      }
      for (i=0; i<loop5; i+=1){ 
         if( ih8[i]!=ii8[i] || ih4[i]!=ii4[i] ||
             ih2[i]!=ii2[i] || ih1[i]!=ii1[i] ){
            ier=ier+1;
            printf("i=,ih8[%d]=, ii8[%d]=",i,i,ih8[i],i,ii8[i]);
            printf(" ih4[%d]=%d, ii4[%d]=%d\n",i,ih4[i],i,ii4[i]);
            printf("ih2[%d]=%d, ii2[%d]=%d",i,ih2[i],i,ii2[i]);
     +      printf(" ih1[%d]=%d, ii1[%d]=%d\n",i,ih1[i],i,ii1[i]);
         }
      }
      printf( "-----  --");
      printf( " parallel");
      printf( " for lastprivate(ih8,ih4,ih2,ih1,id) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  LASTPRIVATE clause is not active!\n");
         printf( "     ib=%d\n",ib);
         printf( "     ier=%d\n",ier);
         printf( "     ih8=%d\n",ih8);
         printf( "     ii8=%d\n",ii8);
         printf( "     ih4=%d\n",ih4);
         printf( "     ii4=%d\n",ii4);
         printf( "     ih2=%d\n",ih2);
         printf( "     ii2=%d\n",ii2);
         printf( "     ih1=%d\n",ih1);
         printf( "     ii1=%d\n",ii1);
      }
      exit (0) ;
      }
