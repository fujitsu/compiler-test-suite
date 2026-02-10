#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
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

      int i;
int main() { 

      int        ib[10], ith, ier;
      int        loop=10, thread=4;
      int        mii, mia[10];
      float      mrr, mra[10];
      COMPLEX8   mcc, mca[10];
      char       mss[5], msa[10][5];

      mii=7;
      mrr=5.1;
      mcc.real=1.2;
      mcc.imag=9.1;
      sprintf(mss,"str");
      for(i=0;i<10;i++){
	ib[i]=0;
	mia[i]=0;
	mra[i]=0.0;
	mca[i].real=0.0;
	mca[i].imag=0.0;
	sprintf(msa[i]," ");
      }	
	
#ifdef _OPENMP
    omp_set_num_threads(thread);
    thread = omp_get_max_threads();
#endif

#pragma omp parallel firstprivate(mii, mrr, mcc, mss) private(ith)
{
#ifdef _OPENMP
      ith = omp_get_thread_num();
#endif
      mia[ith]=mii;
      mra[ith]=mrr;
      mca[ith]=mcc;
      sprintf(msa[ith],mss);
      mii = ith;
      mrr = ith;
      mcc.real = ith;
      mcc.imag = ith;
      sprintf(mss,"%d",ith);
      ib[ith]=ith;
}

      ier = 0;
      for (i=0; i<thread; i+=1){ 
         if(mia[i]!=mii) ier=ier+1;
         if(mra[i]!=mrr) ier=ier+1;
         if(mca[i].real!=mcc.real) ier=ier+1;
         if(mca[i].imag!=mcc.imag) ier=ier+1;
         if(memcmp(msa[i],mss,1)!=0) ier=ier+1;;
         if(ib[i]!=i) ier=ier+1;
      }
      for (i=thread; i<loop; i+=1){ 
         if(mia[i]!=0) ier=ier+1;
         if(mra[i]!=0.0) ier=ier+1;
         if(mca[i].real!=0.0) ier=ier+1;
         if(mca[i].imag!=0.0) ier=ier+1;
         if(memcmp(msa[i]," ",1)!=0) ier=ier+1;
         if(ib[i]!=0) ier=ier+1;
      }

      printf("-- parallel firstprivate(mii, mrr, mcc, mss) private[ith] --\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active! \n");
	 for (i=0; i<loop; i+=1){ 
	   printf("  mia[%d]=%d",i,mia[i]);
	   printf("  mra[%d]=%f",i,mra[i]);
	   printf("  mca[%d].real=%f",i,mca[i].real);
	   printf("  mca[%d].imag=%f",i,mca[i].imag);
	   printf("  msa[%d]=%s",i,msa[i]);
	   printf("\n");
	 }
	 printf( "  ier=%d \n",ier);
	 for (i=0; i<loop; i+=1) printf( "  ib[%d]=%d\n",i,ib[i]);
	 printf("  mii=%d",mii);
	 printf("  mrr=%f",mrr);
	 printf("  mcc.real=%f",mcc.real);
	 printf("  mcc.imag=%f\n",mcc.imag);
	 printf("  mss=%s\n",mss);
       }
      exit (0) ;
}

