#include <stdio.h>
#include <stdlib.h>
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

      int      ier;
      COMPLEX8 cb[50];
      int      loop=50;
      int      mii;
      float    mrr;
      COMPLEX8 mcc;
      char     mss[4];

      for(i=0;i<50;i++){ 
	cb[i].real = 0; 
	cb[i].imag = 0; 
      }
      mii = 0;
      mrr = 0.0;
      mcc.real = 0.0;
      mcc.imag = 0.0;
      memcpy(mss,"str",3);

#pragma omp parallel
{
#pragma omp for private(mii, mrr, mcc, mss)
      for (j=0; j<loop; j+=1){ 
         mii = j;
         mrr = j;
         mcc.real = j;
         mcc.imag = j;
         cb[mii].real = mii + mcc.real;
         cb[mii].imag = mrr + mcc.imag;
         sprintf(mss,"%d",j);
      }
}

      ier = 0;
      for (j=0; j<loop; j+=1){ 
          if (cb[j].real != j*2 || cb[j].imag != j*2) {
             ier=ier+1;
             printf("E  j=%d  cb[j].real=%f  cb[j].imag=%f  must be %f\n",
                     j,cb[j].real,cb[j].imag,j*2.0);
          }
      }
      if(mii!=0){
	ier=ier+1;
        printf("E  mii=%d  must be  0\n",mii);
      }
      if(mrr!=0.0){
  	ier=ier+1;
        printf("E  mrr=%f  must be  0 \n",mrr);
      }
      if(mcc.real!=0.0 || mcc.imag!=0.0)
      {
  	ier=ier+1;
        printf("E  mcc.real=%f mcc.imag = %f  must be  0\n",mcc.real,mcc.imag);
      }
       if(memcmp(mss,"str",3)!=0){
  	ier=ier+1;
        printf("E  mss=%s  must be  str \n",mss);
      }

      printf( "--  --\n");
      printf( "-- parallel do private(mii, mrr,mcc, mss) -- \n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf("NG!  PRIVATE clause is not active!\n");
         printf("  ier=%d \n",ier);
	 printf("  mii=%d",mii);
	 printf("  mrr=%f",mrr);
	 printf("  mcc.real=%f",mcc.real);
	 printf("  mcc.imag=%f",mcc.imag);
	 printf("  mss=%s\n",mss);
      }
      exit (0) ;
      }
