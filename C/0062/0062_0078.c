
#define  inclock(x,y,z) x=clock(y,z)
#include <math.h>
#include <stdio.h>
static int loop_num();
int main()
 {
   int i,j,k,n;
   double a[20][20],b[20][20],c[20][20];

   n=loop_num();
   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       a[j][i] = i;
       b[j][i] = j;
       c[j][i] = i+j;
     }
   }
   for(i=1;i<n;i++){
     for(j=2;j<n;j++){
       for(k=3;k<n;k++){
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
static int loop_num()
{
  return 20;
}
