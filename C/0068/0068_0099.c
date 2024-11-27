#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      int sub(int ia,int ib[50],int loop)
      {
#pragma omp parallel
{
#pragma omp for lastprivate(ia)
      for (ia=0; ia<loop; ia+=1){ 
          ib[ia] = ia;
      }
}
      return ia;
      }
int main() { 
      int ia, ib[50], ier;
      int i, loop=50;
      ia = 0;
      for(i=0;i<loop;i++) ib[i] = 0;
      ia=sub (ia, ib, loop);
      ier = 0;
      for (i=0; i<loop; i+=1){ 
          if (ib[i]!=i) ier=ier+1;
      }
      printf("-----  --");
      printf(" parallel");
      printf(" for lastprivate(ia) -----\n");
      if(ier==0 && ia==loop) {
         printf( "OK\n");
      }else{
         printf( "NG!  LASTPRIVATE clause is not active!\n");
         printf( "     ia=%d  It must be %d\n",ia,loop);
         printf( "     ier=%d\n",ier);
      }
      exit (0) ;
      }
