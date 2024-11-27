
#include <math.h>
#include <stdio.h>
int main()
 {
   int i,j,k;
   float a[20][20][20],b[20][20][20],c[20][20];

   for(k=0;k<20;k++){
     for(j=0;j<20;j++){
       for(i=0;i<20;i++){
	 a[k][j][i] = i;
	 b[k][j][i] = j;
	 c[j][i] = i+j;
       }
     }
   }
   
   for(i=0;i<20;i++){
     for(j=0;j<20;j++){
       for(k=0;k<j;k++){
	 c[j][i]=c[j][i]+a[1][k][i]*b[1][j][k];
       }
     }
   }
   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       printf("   c[%d][%d] ==>",i,j,k);
       printf(" %f \n",c[i][j]);
     }
   }
   for(k=0;k<20;k++){
     for(j=0;j<20;j++){
       for(i=0;i<20;i++){
         a[k][j][i] = i;
         b[k][j][i] = j;
         c[j][i] = i+j;
       }
     }
   }
   
   for(i=0;i<20;i++){
     for(j=0;j<20;j++){
       for(k=0;k<j;k++){
         c[j][i]=c[j][i]+a[1][k][i]*b[1][j][k] + 3;
       }
     }
   }
   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       printf("   c[%d][%d] ==>",i,j,k);
       printf(" %f \n",c[i][j]);
     }
   }
 }
