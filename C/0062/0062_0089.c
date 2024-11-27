
#include <math.h>
#include <stdio.h>
static void func(int n,int m);
int main()
 {
   int n=10;
   int m=10;
   func(n,m);
 }   
static void func(int n,int m)
{
   int i,j,k;
   float a[n][m],b[n][m],c[n][m];

   for(j=0;j<n;j++){
     for(i=0;i<m;i++){
       a[j][i] = i;
       b[j][i] = j;
       c[j][i] = i+j;
     }
   }
   
   for(i=0;i<m;i++){
     for(j=0;j<n;j++){
       for(k=0;k<m;k++){
	 c[j][i]=c[j][i]+a[k][i]*b[j][k];
       }
     }
   }
   for(j=0;j<n;j++){
     for(i=0;i<m;i++){
       printf("   c[%d][%d] ==>",i,j,k);
       printf(" %g \n",c[i][j]);
     }
   }
   for(j=0;j<n;j++){
     for(i=0;i<m;i++){
       a[j][i] = i;
       b[j][i] = j;
       c[j][i] = i+j;
     }
   }
   
   for(i=0;i<n;i++){
     for(j=0;j<m;j++){
       for(k=0;k<n;k++){
         c[i][j]=c[i][j]+a[i][k]*b[k][j];
       }
     }
   }
   for(j=0;j<n;j++){
     for(i=0;i<m;i++){
       printf("   c[%d][%d] ==>",i,j,k);
       printf(" %g \n",c[i][j]);
     }
   }
 }
