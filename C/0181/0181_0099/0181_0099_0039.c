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

      static int i,j;

int lto_sub_39 () {

      int        ic, ier;
      COMPLEX8   cb[50], cc;
      int        loop=50, thread=4;
      int        mii;
      float      mrr;
      COMPLEX8   mcc;
      char       mss[4];

#ifdef _OPENMP
    thread = omp_get_max_threads();
#else
    thread = 1;
#endif
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
#pragma omp for firstprivate(mii, mrr, mcc, mss)
      for (j=0; j<loop; j+=1){ 
         cb[j].real = mii + mcc.real;
         cb[j].imag = mrr + mcc.imag;
         mii = j;
         mrr = j;
         mcc.real = j;
         mcc.imag = j;
         sprintf(mss,"%d",j);
      }
}

      ic = 0;
      ier = 0;
      for (j=0; j<loop; j+=1){ 
         if (cb[j].real!=(j-1)*2 || cb[j].imag!=(j-1)*2) {
	   cc.real = mii + mcc.real;
	   cc.imag = mrr + mcc.imag;
	   if (cb[j].real==cc.real && cb[j].imag==cc.imag) {
	     ic=ic+1;
            }else{
	      ier=ier+1;
	      printf( "E  cb[%d].real=%f cb[%d].imag=%f must be %f",
	      	      j,cb[j].real,j,cb[j].imag,j*2.0);
            }
         }
      }
      if(memcmp(mss,"str",3)!=0) ier=ier+1;


      printf( "-- parallel do firstprivate(mii, mrr, mcc, mss) -- \n");
      if(ier==0 && ic<=thread) {
         printf( "OK \n");
      }else{
         printf("NG!  FIRSTPRIVATE clause is not active! \n");
         printf("  ic=%d  thread=%d  ier=%d \n",ic,thread,ier);
         printf("  mii=%d",mii);
	 printf("  mrr=%f",mrr);
	 printf("  mcc.real=%f",mcc.real);
	 printf("  mcc.imag=%f",mcc.imag);
	 printf("  mss=%s\n",mss);
       }
      return (0) ;
}
