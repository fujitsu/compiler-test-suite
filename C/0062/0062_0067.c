
#define  inclock(x,y,z) x=clock(y,z)
#include <math.h>
#include <stdio.h>
int main()
 {
   int i,j,k;
   float a[20][20],b[20][20],c[20][20];

   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       a[j][i] = i;
       b[j][i] = j;
       c[j][i] = i+j;
     }
   }
   for(i=0;i<16;i++){
     for(j=2;j<18;j++){
       for(k=4;k<20;k++){
	 c[j][i]=c[j][i]+a[k][i]*b[j][k];
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
