#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      void sub(int ia,int ib[10],int it)
      {
      ib[it] = ia;
      return;
      }
int main() { 
      int ia, ib[10], it, ier;
      int i, loop=10, thread=4;
      ia = 9;
      for (i=0;i<10;i++) ib[i] = 0;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel firstprivate(ia) private(it)
{
#ifdef _OPENMP
    it = omp_get_thread_num();
#endif
      sub (ia, ib, it);
}
      ier = 0;
      for (i=0; i<thread; i+=1){ 
          if (ib[i]!=9) ier=ier+1;
      }
      for (i=thread; i<loop; i+=1){ 
          if (ib[i]!=0) ier=ier+1;
      }
      printf("-----  --");
      printf(" parallel firstprivate(ia) private(it) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active!\n");
         printf( "     ib=%d\n",ib);
      }
      exit (0) ;
      }
