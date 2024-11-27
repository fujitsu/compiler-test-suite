#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia, ib[50], ic[50], ier;
      int i, loop=50, loop5=5;
      long int ii8[5];
      int ii4[5];
      short int ii2[5];
      char ii1[5];
      for (i=0; i<loop; i+=1){ 
        ib[i] = 0;
        ic[i] = 0;
      }
      for (i=0; i<loop5; i+=1){ 
         ii8[i] = i*1000;
         ii4[i] = i*100;
         ii2[i] = i*10;
         ii1[i] = i*1;
      }
#pragma omp parallel
{
#pragma omp for firstprivate(ii8,ii4,ii2,ii1) private(ia)
      for (i=0; i<loop; i+=1){ 
         ia=fmod(i,5);
         ib[i] = ii8[ia]+ii4[ia]+ii2[ia]+ii1[ia];
      }
}
      for (i=0; i<loop; i+=1){ 
         ia=fmod(i,5);
         ic[i] = ii8[ia]+ii4[ia]+ii2[ia]+ii1[ia];
      }
      ier = 0;
      for (i=0; i<loop; i+=1){ 
         if (ib[i]!=ic[i]) {
            printf( "i=%d, ib[%d]=a%d, ic[%d]=%d",i,i,ib[i],i,ic[i]);
            ier=ier+1;
         }
      }
      printf( "-----  --");
      printf( " parallel");
      printf( " do private(ia)");
      printf( " firstprivate(ii8,ii4,ii2,ii1) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active!\n");
         printf( "     ib=%d\n",ib);
         printf( "     ic=%d\n",ic);
         printf( "     ier=%d\n",ier);
         printf( "     ii8=%d\n",ii8);
         printf( "     ii4=%d\n",ii4);
         printf( "     ii2=%d\n",ii2);
         printf( "     ii1=%d\n",ii1);
      }
      exit (0) ;
      }
