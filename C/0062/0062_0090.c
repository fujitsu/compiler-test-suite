
#include <math.h>
#include <stdio.h>
struct xx
{
  float a[10][10],b[10][10],c[10][10];
}xx1;

static void func(int n ,int m);
int main()
 {
   int n=10;
   int m=10;
   func(n,m);
 }   
static void func(int n,int m)
{
   int i,j,k;
   for(j=0;j<10;j++){
     for(i=0;i<10;i++){
       xx1.a[j][i] = i;
       xx1.b[j][i] = j;
       xx1.c[j][i] = i+j;
     }
   }
   
   for(i=0;i<10;i++){
     for(j=0;j<10;j++){
       for(k=0;k<10;k++){
	 xx1.c[j][i]=xx1.c[j][i]+xx1.a[k][i]*xx1.b[j][k];
       }
     }
   }
   for(j=0;j<10; j++){
     for(i=0;i<10;i++){
       printf("   c[%d][%d] ==>",i,j,k);
       printf(" %g \n",xx1.c[i][j]);
     }
   }
 }
