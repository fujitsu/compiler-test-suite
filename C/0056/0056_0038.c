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

      int i,j;
int main() { 

      int        ic, ier;
      COMPLEX8   cb[50], cc;
      int        loop=50, thread=4;
      int        mii;
      float      mrr;
      COMPLEX8   mcc;
      char       mss[4];

#ifdef _OPENMP
    thread = omp_get_max_threads();
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
	      printf( "E  cb[%d].real=%f cb[%d].imag=%f must be %d",
		     j,cb[j].real,cb[j].imag,j*2.0);
            }
         }
      }
      if(memcmp(mss,"str",3)!=0) ier=ier+1;

      printf( "--  -- \n");
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
      exit (0) ;
      }
