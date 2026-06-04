#include <stdio.h>
#include <stdlib.h>
#include <memory.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      int ia[50], ib, ic, it,i;

      memset(ia,0,sizeof(ia));
      ib = 0;

#pragma omp parallel private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() + 1;
#endif
#pragma omp for schedule(static,1)
      for (i=0; i<50; i+=1){ 
         ia[i] = it;
      }
}
      ib = 0;
      ic = 0;
      for (i=0; i<50; i+=1){ 
         if (ia[i]!=ic) {
             ib=ib+1;
             ic=ia[i];
         }
      }
      printf( "      parallel private(it)");
      printf( "      do schedule(static,1) -----");
      if(ib==50){
	printf( "OK\n");
      }
#ifdef _OPENMP
      else if((ib==1) && (omp_get_num_threads()==1)){
	printf( "OK\n");
      }
#endif
      else {
	printf( "NG!  SCHEDULE clause is not active!\n");
	printf( "     ib=%d It must be 50\n",ib);
	printf( "     ia=%d\n",ia);
	}
      exit (0) ;
      }
