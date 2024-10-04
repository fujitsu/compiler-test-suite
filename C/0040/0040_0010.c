#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      int i,j;
int main() { 

      int       ia, ib[50], ier;
      int       loop=50, loop5=5;
      long int  mi8[5];
      short int mi1[5];

      for(i=0;i<50;i++) ib[i] = 0;
      ier = 0;
      for (j=0; j<loop5; j+=1){ 
          mi8[j] = j+10;
          mi1[j] = j;
      }

#pragma omp parallel private(j)
{
#pragma omp for private(mi8, mi1, ia)
      for (j=0; j<loop; j+=1){ 
         ia=j%loop5;
         mi8[ia] = j*10;
         mi1[ia] = j*2;
         ib[j] = mi8[ia]+mi1[ia];
      }
      for (j=0; j<loop5; j+=1){ 
         if(mi8[j]!=j+10 || mi1[j]!=j){
#pragma omp critical
            ier=ier+1;
            printf( "E  mi8[%d]=%ld  must be  %d \n",j,mi8[j],j+10);
            printf( "E  mi1[%d]=%d  must be  %d \n",j,mi1[j],j);
         }
      }
}
      for (j=0; j<loop; j+=1){ 
         if (ib[j]!=j*12) {
            ier=ier+1;
            printf( "E  ib[%d]=%d  must be  %d \n",j,ib[j],j*12);
         }
      }
      printf( "--  --\n");
      printf( "-- parallel do private(mi8, mi1, ia) --\n");
      if(ier==0) {
         printf( "OK \n");
      }else{
         printf( "NG!  PRIVATE clause is not active! \n");
         printf( "  ier= %d \n",ier);
         printf( "  mi8[0-4]= %ld %ld %ld %ld %ld \n",mi8[0],mi8[1],mi8[2],mi8[3],mi8[4]);
         printf( "  mi1[0-4]= %d %d %d %d %d \n",mi1[0],mi1[1],mi1[2],mi1[3],mi1[4]);
         for(i=0;i<50;i=i+10) printf( "  ib[%d-%d]= %d %d %d %d %d %d %d %d %d %d\n",
				     i,i+9,ib[i],ib[i+1],ib[i+2],ib[i+3],ib[i+4],
				     ib[i+5],ib[i+6],ib[i+7],ib[i+8],ib[i+9]);
      }
      exit (0) ;
      }
