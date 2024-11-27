
#include <math.h>
#include <stdio.h>
int main()
 {
   int i,j,k;
   float  a1[20][20],b1[20][20],c1[20][20],result4;
   double a2[20][20],b2[20][20],c2[20][20],result8;

   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       a1[j][i] = i;
       b1[j][i] = j;
       c1[j][i] = i+j;
       a2[j][i] = i;
       b2[j][i] = j;
       c2[j][i] = i+j;
     }
   }
   
#pragma omp parallel for
   for(i=0;i<20;i++){
     for(j=0;j<20;j++){
       for(k=0;k<20;k++){
	 c1[j][i] = -(c1[j][i]+a1[k][i]*b1[j][k]);
       }
     }
   }

   result4 = 0;
   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       result4 = result4 + c1[j][i];
     }
   }
   printf(" result = %f \n", result4);

   
#pragma omp parallel for
   for(i=0;i<20;i++){
     for(j=0;j<20;j++){
       for(k=0;k<20;k++){
	 c2[j][i] = +(c2[j][i]+a2[k][i]*b2[j][k]);
       }
     }
   }
   result8 = 0;
   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       result8 = result8 + c2[j][i];       
     }
   }
   printf(" result = %f \n", result8);
 }
