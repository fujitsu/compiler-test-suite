#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

void sub(char ia,char ib[10])
{
      int it;
#pragma omp parallel private(ia,it)
{
#ifdef _OPENMP
    it = omp_get_thread_num();
#endif
      ia=it;
      ib[it] = ia;
}
      return;
}
int main() { 
      char ia, ib[10];
      int ier;
      int i, loop=10, thread=4;
      ia = 9;
      for (i=0;i<10;i++) ib[i] = 9;
#ifdef _OPENMP
    thread = omp_get_max_threads();
#endif
      sub (ia, ib);
      ier = 0;
      for (i=0; i<thread; i+=1){ 
          if (ib[i]!=i) ier=ier+1;
      
      for (i=thread; i<loop; i+=1){ 
          if (ib[i]!=9) ier=ier+1;
      }
      printf( "-----  -- parallel private(ia) ------\n");
      if(ia==9 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "     ia=%d, It must be 9\n",ia);
         printf( "     ib=%d",ib);
      }
      exit (0) ;
      }
}

