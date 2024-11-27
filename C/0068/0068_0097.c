#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      void sub(int ia,int ib[50],int loop)
      {
      int i;
#pragma omp parallel
{
#pragma omp for firstprivate(ia)
      for (i=0; i<loop; i+=1){ 
          ib[i] = ia * i;
      }
}
      return;
      }
int main() { 
      int ia, ib[50], ic[50], ier;
      int i, loop=50;
      ia = 99;
      for(i=0;i<loop;i++) ib[i] = 0;
      sub (ia, ib, loop);
      for(i=0;i<loop;i++) ic[i] = 0;
      for (i=0; i<loop; i+=1){ 
          ic[i] = ia * i;
      }
      ier = 0;
      for (i=0; i<loop; i+=1){ 
          if (ib[i]!=ic[i]) ier=ier+1;
      }
      printf("-----  --");
      printf(" parallel");
      printf(" for firstprivate(ia) -----\n");
      if(ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active!\n");
         printf( "     ier=%d\n",ier);
      }
      exit (0) ;
      }
