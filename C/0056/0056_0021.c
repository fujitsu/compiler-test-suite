#include <stdlib.h>
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

      int        mii;
      float      mrr;
      COMPLEX8   mcc;
      char       mss[4];
      int        ia[10], ier;
      int        thread=4, loop=10;

      for(i=0;i<10;i++) ia[i] = 0;
      mii = 0;
      mrr = 0.0;
      mcc.real = 0.0;
      mcc.imag = 0.0;
      memcpy(mss,"str",3);
#ifdef _OPENMP
      thread=omp_get_max_threads();
#endif      

#pragma omp parallel  private(mii,mrr,mcc,mss)
{
#ifdef _OPENMP
      mii=omp_get_thread_num();
#endif      
      mrr = mii*11.1;
      mcc.real = mii*1.1;
      mcc.imag = (-1)*mii*0.1;
      sprintf(mss,"%d",mii);
      ia[mii]=mii;
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
      printf( "--  -- \n");
      printf( "-- parallel private(mii,mrr,mcc,mss) -- \n");
      if ( ier==0 && mii==0 && mrr==0.0 &&
           mcc.real==0.0 && mcc.imag==0.0 && memcmp(mss,"str",3)==0 ) {
         printf("OK\n");
      }else{
         printf("NG!  PRIVATE clause is not active! \n");
         printf("     ier = %d \n",ier);
         printf("     mii = %d \n",mii);
         printf("     mrr = %f \n",mrr);
         printf("     mcc = %f %f \n",mcc.real,mcc.imag);
         printf("     mss = %s \n",mss);
         for(i=0;i<10;i++) printf("     ia[%d]=%d \n",i,ia[i]);
      }
      exit (0) ;
      }
