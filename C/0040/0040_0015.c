#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      int i;
int main() { 

      int ib[50], ier;
      int  loop=50;
      int ma;

      ma = 0;
      for(i=0;i<50;i++) ib[i] = 0;
#pragma omp parallel
{
#pragma omp for lastprivate(ma)
      for (i=0; i<loop; i+=1){ 
          ma = i;
          ib[i] = ma;
      }
}
      ier = 0;
      for (i=0; i<loop; i+=1){ 
          if (ib[i]!=i) ier=ier+1;
      }
      printf( "--  -- \n");
      printf( "-- parallel  do lastprivate(ma) -- \n");
      if(ier == 0 && ma == loop-1) {
         printf( "OK \n");
      }else{
         printf( "NG!  LASTPRIVATE clause is not active! \n");
         for(i=0;i<50;i=i+10) printf( "  ib[%d-%d]= %d %d %d %d %d %d %d %d %d %d\n",
				     i,i+9,ib[i],ib[i+1],ib[i+2],ib[i+3],ib[i+4],
				     ib[i+5],ib[i+6],ib[i+7],ib[i+8],ib[i+9]);
         printf( "  ma=%d   It must be %d \n",ma,loop);
         printf( "  ier=%d \n",ier);
      }

      exit (0) ;
      }
