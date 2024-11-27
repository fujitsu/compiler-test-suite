#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      void sub(int ia,int ib[50],int ic[50],int loop)
      {
      int i;
#pragma omp parallel
{
#pragma omp for firstprivate(ib)
      for (i=0; i<loop; i+=1){ 
          ic[i] = ia + ib[i];
      }
}
      return;
      }
int main() { 
      int ia, ib[50], ic[50], ier;
      int i, loop=50;
      ia = 3;
      for (i=0; i<loop; i+=1){ 
          ib[i] = (i-fmod(i,30))*pow(-1,i);
      }
      sub (ia, ib, ic, loop);
      ier = 0;
      for (i=0; i<loop; i+=1){ 
          if (ic[i]!=ia+ib[i]) ier=ier+1;
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
