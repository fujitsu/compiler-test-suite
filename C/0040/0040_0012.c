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

      int        ier;
      COMPLEX8   cb[50], cc;
      char       ss[4];
      int        loop=50;
      int        mii[50];
      float      mrr[50];
      COMPLEX8   mcc[50];
      char       mss[50][4];

      for(i=0;i<50;i++){
	cb[i].real = 0;
	cb[i].imag = 0;
      }
      for (i=0; i<loop; i+=1){ 
         mii[i] = i;
         mrr[i] = (-1)*i;
         mcc[i].real = i;
         mcc[i].imag = (-1)*i;
         sprintf(mss[i],"%d",i);
      }

#pragma omp parallel
{
#pragma omp for firstprivate(mii, mrr, mcc, mss)
      for (i=0; i<loop; i+=1){ 
         cb[i].real = mii[i] + mcc[i].real;
         cb[i].imag = mrr[i] + mcc[i].imag;
         mii[i] = i*10;
         mrr[i] = i*10;
         mcc[i].real = i*10;
         mcc[i].imag = i*(-10);
         sprintf(mss[i],"%d",i*10);
      }
}

      ier = 0;
      for (i=0; i<loop; i+=1){ 
         cc.real = mii[i] + mcc[i].real;
         cc.imag = mrr[i] + mcc[i].imag;
         if (cb[i].real!=cc.real || cb[i].imag!=cc.imag) {
            ier=ier+1;
            printf( "E  cb[%d].real=%f  must be  %f \n",i,cb[i].real,cc.real);
            printf( "E  cb[%d].imag=%f  must be  %f \n",i,cb[i].imag,cc.imag);
         }
      }
      for (i=0; i<loop; i+=1){ 
         sprintf(ss,"%d",i);
         if(memcmp(mss[i],ss,2)!=0){
            ier=ier+1;
            printf( "E   mss[%d]=%s \n",i,mss[i]);
         }
       }
      printf( "--  -- \n");
      printf( "-- parallel do firstprivate(mii, mrr, mcc, mss) -- \n");
      if(ier==0) {
         printf( "OK \n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active! \n");
         printf( "  ier=%d \n",ier);
      }
      exit (0) ;
      }

