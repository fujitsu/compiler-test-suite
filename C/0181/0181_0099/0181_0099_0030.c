#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif



      typedef struct{
	float real,imag;
      }COMPLEX8;


      static int i;

int lto_sub_30 () {

      int        ib[10], ith, ier;
      int        loop=10, thread=4;
      int        mii, mia[10];
      float      mrr, mra[10];
      COMPLEX8   mcc, mca[10];
      char       mss[5], msa[10][5];

      for(i=0;i<10;i++) ib[i]=0;
      mii=7;
      mrr=5.1;
      mcc.real=1.2;
      mcc.imag=9.1;
      sprintf(mss,"str");
      for (i=0; i<loop; i+=1){ 
         mia[i]=0;
         mra[i]=0.0;
         mca[i].real=0.0;
         mca[i].imag=0.0;
         sprintf(msa[i]," ");
      }
#ifdef _OPENMP
    thread=omp_get_max_threads();
#else
    thread=1;
#endif
#pragma omp parallel firstprivate( mii, mrr, mcc, mss ) private(ith)
{
#ifdef _OPENMP
    ith=omp_get_thread_num();
#else
    ith=0;
#endif
      mia[ith]=mii;
      mra[ith]=mrr;
      mca[ith].real=mcc.real;
      mca[ith].imag=mcc.imag;
      sprintf(msa[ith],mss);
      mii=0;
      mrr=0.0;
      mcc.real=0.0;
      mcc.imag=0.0;
      sprintf(mss," ");
      ib[ith]=ith;
}
      ier=0;
      for (i=0; i<thread; i+=1){ 
         if(mia[i]!=mii) ier=ier+1;
         if(mra[i]!=mrr) ier=ier+1;
         if(mca[i].real!=mcc.real) ier=ier+1;
         if(mca[i].imag!=mcc.imag) ier=ier+1;
         if(memcmp(msa[i],mss,1)!=0) ier=ier+1;
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

      printf("-- parallel firstprivate(mii, mrr, mcc, mss) private(ith) --\n");
      if(ier==0) {
         printf( "OK \n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active! \n");
         for (i=0; i<loop; i+=1){ 
            printf("  mia[%d]=%d",i,mia[i]);
            printf("  mra[%d]=%f",i,mra[i]);
            printf("  mca[%d].real=%f",i,mca[i].real);
            printf("  mca[%d].imag=%f",i,mca[i].imag);
            printf("  msa[%d]=%s ",i,msa[i]);
            printf("\n");
         }
         printf( "  ier=%d \n",ier);
         for (i=0; i<loop; i+=1) printf( "  ib[%d]=%d \n",i,ib[i]);
	 printf("  mii=%d",mii);
	 printf("  mrr=%f",mrr);
	 printf("  mcc.real=%f",mcc.real);
	 printf("  mcc.imag=%f\n",mcc.imag);
	 printf("  mss=%s\n",mss);
      }
      return (0) ;
}
