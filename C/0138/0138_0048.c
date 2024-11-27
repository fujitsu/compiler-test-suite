#include <stdlib.h>
#include <math.h>
#include <stdio.h>
int blokdata(long int *l, long int *m, long int *n);

int main(){
 static float a[10]={2.,2.,2.,2.,2.,2.,2.,2.,2.,2.} ;
 static float b[10]={4.,4.,4.,4.,4.,4.,4.,4.,4.,4.} ;
 static float c[10]={5.,5.,5.,5.,5.,5.,5.,5.,5.,5.} ;
 static float d[10]={0.,0.,0.,0.,0.,0.,0.,0.,0.,0.} ;
 static float e[10][10] ;
 static float f[10]={2.,2.,2.,2.,2.,2.,2.,2.,2.,2.} ;
 static float g[10]={0.,0.,0.,0.,0.,0.,0.,0.,0.,0.} ;
 static unsigned long int ll[10][10];
 static          long int n,m,l;
 static          long int i,j;
for(j=0;j<10;j++){
   for(i=0;i<10;i++){
      e[i][j]=0.;
      }
    }
blokdata(&l,&m,&n);
printf(" VPSOPT:1002\n");
for(j=0;j<10;j++){
   for(i=0;i<10;i++){
        if (m > i+1){
           ll[i][j]=a[i]>b[i];
           b[i]=a[i]+b[i];
           }
        else{
           ll[i][j]=(a[i]<=b[i])|(d[i]< c[i]);
           a[i]=b[i]+a[i];
           }
        }
     }
for(i=1;i<9;i++){
   g[i]=(a[i]*b[i]);
   }
  for(j=0;j<5;j++){
     for(i=5;i<10;i++){
        if (ll[i][j]==1){
           f[i]=a[i]*b[i];
           }
         else
           {
           f[i]=a[i]+b[i];
           }
       }
  for(i=0;i<5;i++){
     if (ll[i][j]==1){
        f[i]=a[i]+b[i]+c[i];
        a[i]=b[i]+f[i]*2.0;
        }
     else if (m > 10)
             {
             f[i]=a[i]+b[i]+c[i]+d[i];
             }
     else if (n > 100)
             {
             f[i]=1.0;
             a[i]=2.0;
             b[i]=3.0;
             }
     else if (f[i] > 2.0)
             {
              f[i]=a[i]+b[i]+c[i]+d[i];
             }
     else if (c[i] < 1.0)
             {
              f[i]=c[i]+d[i];
             }
         }
     }
  printf(" *****  *****\n");
  for(j=0;j<10;j++)
     {
     printf(" d[%ld]= %f  g[%ld]= %f ",j,d[j],j,g[j]);
     for(i=0;i<10;i++){
        printf(" e[%ld][%ld]= %f \n",j,i,e[j][i]);
        }
     printf(" c[%ld]= %f \n",j,c[j]);
     printf(" a[%ld]= %f  b[%ld]= %f ",j,a[j],j,b[j]);
     printf(" f[%ld]= %f  \n",j,f[j]);
     for(i=0;i<10;i++){
        printf(" ll[%ld][%ld]= %ld ",i,j,ll[i][j]);
        }
     }
     printf("\n");
     exit (0);
  }
int blokdata(l,m,n)
long int *n ;
long int *m;
long int *l;
{
*n=785;
*m=2;
*l=12;
}
