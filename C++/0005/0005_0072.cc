#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <memory.h>
#ifdef _OPENMP
#include <omp.h>
#endif

#ifdef __cplusplus
      typedef struct COMPLEX8{
        float real,imag;
        COMPLEX8()                        { real=imag=0; }
        COMPLEX8(COMPLEX8 &r)             { real=r.real; imag=r.imag; }
        COMPLEX8 & operator =(COMPLEX8 &r){ real=r.real; imag=r.imag; return *this; }
        ~COMPLEX8(){ }
      }COMPLEX8;
#else
      typedef struct{
	float real,imag;
      }COMPLEX8;
#endif

      int        i,j;
int main() { 

      int        ier;
      COMPLEX8   cb[50];
      char       ss[4];
      int        loop=50;
      int        mii;
      float      mrr;
      COMPLEX8   mcc;
      char       mss[4];

      for(i=0;i<50;i++) {
	cb[i].real = 0;
	cb[i].imag = 0;
      }
      mii = 7;
      mrr = 3.5;
      mcc.real = 1.9;
      mcc.imag = 8.1;
      memcpy(mss,"str",3);

#pragma omp parallel
{
#pragma omp for lastprivate(mii, mrr, mcc, mss)
      for (j=0; j<loop; j+=1){ 
         mii = j;
         mrr = j;
         mcc.real = j;
         mcc.imag = j;
         sprintf(mss,"%d",j);
         cb[j].real = mii + mcc.real;
         cb[j].imag = mrr + mcc.imag;
      }
}

      ier = 0;
      for (j=0; j<loop; j+=1){ 
         if (cb[j].real!=j*2 || cb[j].imag!=j*2) {
	   ier=ier+1;
	   printf( "E  cb[%d].real=%f  must be %f \n",j,cb[j].real,j*2.0);
	   printf( "E  cb[%d].imag=%f  must be %f \n",j,cb[j].imag,j*2.0);
         }
      }
      if(mii != loop-1){
	ier=ier+1;
	printf( "E  mii=%d  must be  %d \n",mii,loop);
      }	
      if(mrr != loop-1){
	ier=ier+1;
	printf( "E  mrr=%f  must be  %d \n",mrr,loop);
      }	
      if(mcc.real != loop-1 || mcc.imag != loop-1){
	ier=ier+1;
	printf( "E  mcc.real=%f  mcc.imag=%f  must be  %d \n",mcc.real,mcc.imag,loop);
      }
      sprintf(ss,"%d",loop-1);
      if(memcmp(mss,ss,2)!=0){
	ier=ier+1;
	printf( "E  mss=%s  must be  %s \n",mss,ss);
      }
      printf( "-- parallel  do lastprivate(mii, mrr, mcc, mss) -- \n");
      if(ier==0) {
         printf( "OK \n");
      }else{
         printf("NG!  LASTPRIVATE clause is not active! \n");
         printf("  ier=%d \n",ier);
         printf("  mii=%d",mii);
	 printf("  mrr=%f",mrr);
	 printf("  mcc.real=%f",mcc.real);
	 printf("  mcc.imag=%f",mcc.imag);
	 printf("  mss=%s\n",mss);
      }
      exit (0) ;
      }
