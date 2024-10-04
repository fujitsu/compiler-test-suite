#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      int i;
int main() { 

      int  ib[50], ic[50], ier;
      int  loop=50;
      int  ma, mb[50];

      for(i=0;i<50;i++) ib[i] = 0;
      ma = 99;
      for (i=0; i<loop; i+=1){ 
          mb[i] = i;
      }
#pragma omp parallel
{
#pragma omp for firstprivate(ma, mb)
      for (i=0; i<loop; i+=1){ 
          ib[i] = ma * mb[i];
      }
}
       for(i=0;i<50;i++) ic[i] = 0;
      for (i=0; i<loop; i+=1){ 
          ic[i] = ma * i;
      }
      ier = 0;
      for (i=0; i<loop; i+=1){ 
          if (ib[i]!=ic[i]) {
              printf( "ib[%d]=%d  ic[%d]=%d \n",i,ib[i],i,ic[i]);
              ier=ier+1;
          }
      }
      printf( "--  -- \n");
      printf( "-- parallel  do firstprivate(ma, mb) -- \n");
      if(ier==0) {
         printf( "OK \n");
      }else{
         printf( "NG!  FIRSTPRIVATE clause is not active! \n");
         printf( "     ier=%d \n",ier);
         for(i=0;i<50;i=i+10) printf( "  ib[%d-%d]= %d %d %d %d %d %d %d %d %d %d\n",
				     i,i+9,ib[i],ib[i+1],ib[i+2],ib[i+3],ib[i+4],
				     ib[i+5],ib[i+6],ib[i+7],ib[i+8],ib[i+9]);
         for(i=0;i<50;i=i+10) printf( "  ic[%d-%d]= %d %d %d %d %d %d %d %d %d %d\n",
				     i,i+9,ic[i],ic[i+1],ic[i+2],ic[i+3],ic[i+4],
				     ic[i+5],ic[i+6],ic[i+7],ic[i+8],ic[i+9]);
      }
      exit (0) ;
      }
