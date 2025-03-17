#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <math.h>
#include <memory.h>
#ifdef _OPENMP
#include <omp.h>
#endif
      typedef struct{
	float real,imag;
      }COMPLEX8;
      int i;

class Class {
public:
Class(int num, ...) {

      int        mii;
      float      mrr;
      COMPLEX8   mcc;
      char       mss[4];
      int        ia[100], ier;
      int        thread=1, loop=100;


  int tmp;
  va_list list;
  va_start(list, num);
  for(int I=0; I<num; ++I)
    tmp = va_arg(list, int);
  printf("\n");
  va_end( list );
  tmp++;


      for(i=0;i<100;i++) ia[i] = 0;
      mii = 0;
      mrr = 0.0;
      mcc.real = 0.0;
      mcc.imag = 0.0;
      memcpy(mss,"str",3);

#pragma omp parallel  private(mii,mrr,mcc,mss)
{
#pragma omp master
      {
	thread = omp_get_num_threads();
	if (thread > 100)
	  printf("Error: omp_get_num_threads() > 100\n");
      }
      mii=omp_get_thread_num();

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
};
int main() { 
  Class O(1, 2);
}
