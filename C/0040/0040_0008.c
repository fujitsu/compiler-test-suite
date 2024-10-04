#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <memory.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      typedef struct{
        float real,imag;
      }COMPLEX8;
      int i,j;
int main() { 

      int      ic, ier;
      COMPLEX8 cb[50];
      char     ss[4];
      int      loop=50, loop5=5;
      int      mii[5];
      float    mrr[5];
      COMPLEX8 mcc[5];
      char     mss[5][4];

      for (i=0; i<50; i++){
	cb[i].real = 0;
	cb[i].imag = 0;
      }
      for (j=0; j<loop5; j+=1){ 
         mii[j] = j;
         mrr[j] = j;
         mcc[j].real = j;
         mcc[j].imag = j;
         sprintf(mss[j],"%d",j);
      }

#pragma omp parallel
{
#pragma omp for private(mii, mrr, mcc, mss,ic)
      for (j=0; j<loop; j+=1){ 
         ic = j%loop5;
         mii[ic] = j;
         mrr[ic] = (-1)*j;
         mcc[ic].real = j;
         mcc[ic].imag = (-1)*j;
         cb[mii[ic]].real = mii[ic] + mcc[ic].real;
         cb[mii[ic]].imag = mrr[ic] + mcc[ic].imag;
         sprintf(mss[ic],"%d",(-1)*j);
       }
}

      ier = 0;
      for (j=0; j<loop; j+=1){ 
          if (cb[j].real != j*2 || cb[j].imag != j*(-2)) {
             ier=ier+1;
              printf("E  j=%d  cb[j].real=%f  cb[j].imag=%f  must be %f\n",
		                          j,cb[j].real,cb[j].imag,j*2.0);
          }
      }
      for (j=0; j<loop5; j+=1){ 
         if(mii[j]!=j) ier=ier+1;
         if(mrr[j]!=j) ier=ier+1;
         if(mcc[j].real != j || mcc[j].imag != j) ier=ier+1;
         sprintf(ss,"%d",j);
	 if(memcmp(mss[j],ss,1)!=0) ier=ier+1;
      }
      printf( "--  --\n");
      printf( "-- parallel  do private(mii, mrr, mcc, mss, ic) --\n");
      if(ier==0) {
         printf( "OK \n");
      }else{
         printf( "NG!  PRIVATE clause is not active! \n");
         printf( "     ier=%d\n",ier);
         for (j=0; j<loop5; j+=1){ 
	   printf("  mii[%d]=%d",j,mii[j]);
	   printf("  mrr[%d]=%f",j,mrr[j]);
	   printf("  mcc[%d].real=%f",j,mcc[j].real);
	   printf("  mcc[%d].imag=%f\n",j,mcc[j].imag);
	   printf("  mss[%d]=%s\n",j,mss[j]);
         }
      }
      exit (0) ;
      }

