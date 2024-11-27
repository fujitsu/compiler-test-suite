#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ib[150], ic, ier;
      int i,j, loop=150, loop5=5;
      long int  ii8[5];
      int  ii4[5];
      short int  ii2[5];
      short int  ii1[5];

      for (i=0; i<loop; i+=1) ib[i]=0;
      ier = 0;
      for (j=0; j<loop5; j+=1){ 
          ii8[j] = j*8;
          ii4[j] = j*4;
          ii2[j] = j*2;
          ii1[j] = j*1;
      }
#pragma omp parallel private(ic,ii8,ii4,ii2,ii1)
{
#pragma omp for
      for (j=0; j<loop; j+=1){ 
         ic=fmod(j,loop5);
         ii8[ic] = j*20;
         ii4[ic] = j*10;
         ii2[ic] = j*5;
         ii1[ic] = fmod(j*2,127);
         ib[j] = ii8[ic]+ii4[ic]+ii2[ic]+ii1[ic];
      }
}
      for (j=0; j<loop5; j+=1){ 
         if(ii8[j]!=j*8 || ii4[j]!=j*4 ||
            ii2[j]!=j*2 || ii1[j]!=j*1 ){
            ier=ier+1;
            printf( "E  j=%d, ii8[j]=%d, ii4[j]=%d\n",j,ii8[j],ii4[j]);
            printf( " ii2[j]=%d, ii1[j]=%d\n",ii2[j],ii1[j]);
         }
      }
      for (j=0; j<loop; j+=1){ 
         if (ib[j]!=j*35+fmod(j*2,127)) {
            ier=ier+1;
            printf( "E  j=%d, ib[j]=%d\n",j,ib[j]);
         }
      }
      printf( "-----  --");
      printf( "  parallel");
      printf( " for private(ic,ii8,ii4,ii2,ii1) ------\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
         printf( "     ii8=%d\n",ii8);
         printf( "     ii4=%d\n",ii4);
         printf( "     ii2=%d\n",ii2);
         printf( "     ii1=%d\n",ii1);
      }
  exit (0) ;
}
