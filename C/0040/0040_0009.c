#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      int i,j;
int main() { 

      int       ib[50], ier;
      int       loop=50;
      long int  mi8;
      int       mi4;
      short int mi2;
      short int mi1;

      mi8 = 99;
      for(i=0;i<50;i++)  ib[i] = 0;
      ier = 0;
#pragma omp parallel
{
#pragma omp for private(mi8, mi4, mi2, mi1)
      for (j=0; j<loop; j+=1){ 
          mi8 = j;
          mi4 = j;
          mi2 = j;
          mi1 = j;
          ib[mi1] = mi8+mi4+mi2+mi1;
      }
      if(mi8!=99){
#pragma omp atomic
          ier+=1;
      }
}
      for (j=0; j<loop; j+=1){ 
          if (ib[j]!=j*4) {
             ier=ier+1;
             printf( "E  ib[j]=%d must be %d \n",ib[j],j*4);
          }
      }
      printf( "--  --\n");
      printf( "-- parallel do private(mi8, mi4, mi2, mi1) --\n");
      if(mi8==99 && ier==0) {
         printf( "OK\n");
      }else{
         printf( "NG!  PRIVATE clause is not active!\n");
         printf( "  mi8=%ld   It must be 99 \n",mi8);
         printf( "  ier=%d \n",ier);
         for(i=0;i<50;i=i+10) printf( "  ib[%d-%d]= %d %d %d %d %d %d %d %d %d %d\n",
                                       i,i+9,ib[i],ib[i+1],ib[i+2],ib[i+3],ib[i+4],
                                       ib[i+5],ib[i+6],ib[i+7],ib[i+8],ib[i+9]);
      }
      exit (0) ;
      }
