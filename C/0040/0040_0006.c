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
      int i;
int main() { 

      int        ia[10], ith, ier;
      int        thread=4, loop=10;
      char       ss[4];
      int        mii[10];
      float      mrr[10];
      COMPLEX8   mcc[10],cc[10];
      char       mss[10][4];

      for (i=0; i<loop; i+=1){ 
	 ia[i] = 0;
         mii[i] = i;
         mrr[i] = i*1.0;
         mcc[i].real = cc[i].real = i*10.0;
         mcc[i].imag = cc[i].imag = i*0.1;
         sprintf(mss[i],"%d",i);
      }
#ifdef _OPENMP
    thread=omp_get_max_threads();
#endif
#pragma omp parallel  private(mii, mrr, mcc, mss,ith)
{
#ifdef _OPENMP
    ith=omp_get_thread_num();
#endif
      for (i=0; i<loop; i+=1){ 
         mii[i] = i*ith;
         mrr[i] = i/(ith+1.3);
         mcc[i].real = i*10.0;
         mcc[i].imag = ith*1.0;
         sprintf(mss[i],"%d",i*10+ith);
      }
      ia[ith]=ith;
}

      ier = 0;
      for (i=0; i<thread; i+=1){ 
	if(ia[i]!=i){
	  ier=ier+1;
	  printf("E   ia[%d]=%d  must be  %d \n",i,ia[i],i);
	}
      }
      for (i=thread+1; i<loop; i+=1){
	if(ia[i]!=0){
	  ier=ier+1;
	  printf("E   ia[%d]=%d  must be  0 \n",i,ia[i]);
	}
      }
      for (i=0; i<loop; i+=1){ 
	if(mii[i]!=i){
	  ier=ier+1;
	  printf("E   mii[%d]=%d  must be  %d \n",i,mii[i],i);
	}
	if(mrr[i]!=i*1.0){
	  ier=ier+1;
	  printf("E   mrr[%d]=%x  must be  %f \n",i,mrr[i],i*1.0);
	}
	if(mcc[i].real != cc[i].real || mcc[i].imag != cc[i].imag){
	  ier=ier+1;
	  printf("E   mcc[%d].real=%x  must be  %x \n",i,mcc[i].real,cc[i].real);
	  printf("E   mcc[%d].imag=%x  must be  %x \n",i,mcc[i].imag,cc[i].imag);
	}
	sprintf(ss,"%d",i);
	if(memcmp(mss[i],ss,1)!=0){
	  ier=ier+1;
	  printf("E   mss[%d]=%s  must be  %d \n",i,mss[i],i);
	}
      }

      printf( "--  --\n");
      printf( "-- parallel private(mii, mrr, mcc, mss,ith) --\n");
      if ( ier==0 ) {
         printf("OK \n");
      }else{
         printf("NG!  PRIVATE clause is not active! \n");
         for (i=0; i<loop; i+=1){ 
	   printf("mii[%d]=%d ",i,mii[i]);
           printf("mrr[%d]=%f ",i,mrr[i]);
	   printf("mcc.real[%d]=%f ",i,mcc[i].real);
	   printf("mcc,imag[%d]=%f ",i,mcc[i].imag);
	   printf("mss[i]=%s \n",mss[i]);
         }
         printf("     ier=%d \n",ier);
         for(i=0;i<10;i++) printf("     ia[%d]=%d \n",i,ia[i]);
      }

      exit (0) ;
      }
