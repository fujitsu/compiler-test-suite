
#define  inclock(x,y,z) x=clock(y,z)
#include <math.h>
#include <stdio.h>
int main()
 {
   int i,j,k;
   double a[20][20],b[20][20],c[20][20];

   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       a[j][i] = i;
       b[j][i] = j;
       c[j][i] = i+j;
     }
   }
   for(i=0;i<20;i++){
     for(j=0;j<20;j++){
       for(k=0;k<20;k++){
         c[i][k]=c[i][k]-a[j][i]*b[j][k];
       }
     }
   }
   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       printf("   c[%d][%d] ==>",i,j,k);
       printf(" %g \n",c[i][j]);
     }
   }
 }
