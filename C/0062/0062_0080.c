
#define  inclock(x,y,z) x=clock(y,z)
#include <math.h>
#include <stdio.h>
static int get_num();
int main()
 {
   int i,j,k,m;
   float a[20][20],b[20][20],c[20][20];

   m = get_num();
   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       a[j][i] = i;
       b[j][i] = j;
       c[j][i] = i+j;
     }
   }
   for(i=0;i<20;i=i+2){
     for(j=0;j<20;j=j+3){
       for(k=0;k<20;k=k+4){
	 c[j][i]=c[j][i]+a[k][i]*b[j][k];
       }
     }
   }
   for(j=0;j<20;j++){
     for(i=0;i<20;i++){
       printf("   c[%d][%d] ==>",i,j);
       printf(" %f \n",c[i][j]);
     }
   }
 }
static int get_num()
{
  return 2;
}
