#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

      int i;
int main() { 

      int         ia, ib[150], ic[150], ier;
      int         loop=150, loop5=5;
      int         mi4[5], ii4[5];
      short int   mi2[5], ii2[5];

      for(i=0;i<150;i++) ib[i] = 0;
      for (i=0; i<loop5; i+=1){ 
         mi4[i] = i*2;
         mi2[i] = i;
      }
#pragma omp parallel
{
#pragma omp for lastprivate(mi4, mi2, ia)
      for (i=0; i<loop; i+=1){ 
         ia = i%loop5;
         mi4[ia] = i+100;
         mi2[ia] = i+50;
         ib[i] = mi4[ia]+mi2[ia];
      }
}
      ier = 0;
      for (i=0; i<loop; i+=1){ 
         ia = i%loop5;
         ii4[ia] = i+100;
         ii2[ia] = i+50;
         ic[i] = ii4[ia]+ii2[ia];
         if (ib[i]!=ic[i]) {
            ier=ier+1;
            printf( "E  ib[%d]=%d  ic[%d]=%d \n",i,ib[i],i,ic[i]);
         }
      }
      for (i=0; i<loop5; i+=1){ 
         if (mi4[i]!=ii4[i]) {
            ier=ier+1;
            printf( "E  mi4[%d]=%d  ii4[%d]=%d \n",i,mi4[i],i,ii4[i]);
         }
         if (mi2[i]!=ii2[i]) {
            ier=ier+1;
            printf( "E  mi2[%d]=%d  ii2[%d]=%d \n",i,mi2[i],i,ii2[i]);
         }
      }
      printf( "--  -- \n");
      printf( "-- parallel  do lastprivate(mi4, mi2, ia) -- \n");
      if(ier==0) {
         printf( "OK \n");
      }else{
         printf( "NG!  LASTPRIVATE clause is not active! \n");
	 for(i=0;i<150;i=i+10) printf( "  ib[%d-%d]= %d %d %d %d %d %d %d %d %d %d\n",
				     i,i+9,ib[i],ib[i+1],ib[i+2],ib[i+3],ib[i+4],
				     ib[i+5],ib[i+6],ib[i+7],ib[i+8],ib[i+9]);
         printf( "  ier=",ier);
         printf( "  mi4[0-4]= %d %d %d %d %d \n",mi4[0],mi4[1],mi4[2],mi4[3],mi4[4]);
         printf( "  ii4[0-4]= %d %d %d %d %d \n",ii4[0],ii4[1],ii4[2],ii4[3],ii4[4]);
         printf( "  mi2[0-4]= %d %d %d %d %d \n",mi2[0],mi2[1],mi2[2],mi2[3],mi2[4]);
         printf( "  ii2[0-4]= %d %d %d %d %d \n",ii2[0],ii2[1],ii2[2],ii2[3],ii2[4]);
      }
      exit (0) ;
      }
