#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void sub( char ia,char ib[10])
 {
  int it;
#ifdef _OPENMP
  it = omp_get_thread_num();
#endif
  ib[it] = ia;
  return;
}
int main() { 
      char ia, ib[10];
      int ier;
      int i, loop=10, thread=4;
      ia = 9;
      for(i=0;i<10;i++) ib[i] = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel shared(ia)
{
      sub (ia, ib);
}
      ier = 0;
      for (i=0; i<thread; i+=1){ 
          if (ib[i]!=9) ier=ier+1;
      }
      for (i=thread; i<loop; i+=1){ 
          if (ib[i]!=0) ier=ier+1;
      }
      printf( "-----  --");
      printf( " parallel shared(ia) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  SHARED clause is not active!\n");
         printf( "     ib=%d",ib);
      }
      exit (0) ;
      }
