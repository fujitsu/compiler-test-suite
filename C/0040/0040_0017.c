#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      void sub();
      static int ia, ib;
      int i,j;
int main() { 

      int  ic[10], it=1, ier;
      int  loop=50, loop2=10, thread=4;

      ia=0;
      ib=0;
      for(i=0;i<10;i++) ic[i]=0;
#ifdef _OPENMP
      thread = omp_get_max_threads();
#endif

#pragma omp parallel private(ia,it)
{
      ia=0;
#ifdef _OPENMP
    it=omp_get_thread_num();
#endif
#pragma omp for
      for (j=0; j<loop; j+=1){ 
#pragma omp critical
{
         ia=ia+1;
         ib=ib+1;
}
         sub();
      }
      ic[it]=ia;
}

      ier=0;
      for (i=0; i<thread; i+=1){ 
	if (ic[i]<loop/thread){
          ier=ier+1;
          printf("E   ic[%d]=%d  < %f \n",i,ic[i],loop/thread);
        }
      }
      for (i=thread+1; i<loop2; i+=1){
	if (ic[i]!=0){
          ier=ier+1;
          printf("E   ic[%d]=%d  == 0 \n",i,ic[i]);
        }
      }
      if (ia!=loop){
        ier=ier+1;
        printf("E   ia=%d  == %d \n",ia,loop);
      }
      if (ib!=loop*2){
        ier=ier+1;
        printf("E   ib=%d  == %d \n",ib,loop*2);
      }

      printf( "--  -- \n");
      printf( "-- parallel private(ia,it) do -- \n");
      if(ier==0) {
         printf( "OK \n");
      }else{
         printf( "NG!  PRIVATE clause is not active! \n");
         printf( "  ier=%d \n",ier);
         printf( "  ia=%d  must be  %d \n",ia,loop);
         printf( "  ib=%d  must be  %d \n",ib,loop*2);
         for(i=0;i<10;i++) printf( "  ic[%d]=%d \n",i,ic[i]);
      }
      exit (0) ;
      }

      void sub() {
#pragma omp critical
	{
	  ia=ia+1;
	  ib=ib+1;
	}
	return;
      }
