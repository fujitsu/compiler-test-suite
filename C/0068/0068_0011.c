#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
      short int ia, ib[10];
      int it, ier;
      int i, loop=10, thread=4;
      ia = 9;
  for(i=0; i<10; i+=1) ib[i] = 9;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
#pragma omp parallel private(ia,it)
{
#ifdef _OPENMP
    it = omp_get_thread_num() ;
#endif
      ia=it;
      ib[it] = ia;
}
      ier = 0;
      for (i=0; i<thread; i+=1){ 
          if (ib[i]!=i) ier=ier+1;
      }
      for (i=thread; i<loop; i+=1){ 
          if (ib[i]!=9) ier=ier+1;
      }
      printf( "-----  --");
      printf( " parallel private(ia) ------\n");
      if(ia==9 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ia=%d, It must be 9\n",ia);
         printf( "     ier=%d\n",ier);
         printf( "     ib=%d\n",ib);
      }
      exit (0) ;
      }
