
#include "stdio.h"
#include "math.h"
int main()
{
  int n,i,j,k,m;
   double a1[10][10],b1[10][10],c1[10][10],result;
   double a2[10][10],b2[10][10],c2[10][10];

   m=3;
   n=10;
   for ( j=0;j<n;j++){
     for ( i=0;i<n;i++){
      a1[j][i]=i; 
      b1[j][i]=j;
      c1[j][i]=i;
      a2[j][i]=i;
      b2[j][i]=j;
      c2[j][i]=i;
    }
  }

  
  for (k=0;k<n;k+=m){
    for (j=0;j<n;j=j+m){
      for (i=0;i<n;i++){
        c1[j][i]=c1[k][i]+a1[k][i]*b1[j][k];
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+c1[j][i];
    }
  }
  printf("test-1 = %f \n",result);

  
#pragma omp parallel for
  for (j=0;j<n;j+=2){
    for (k=0;k<n;k=k+3){
      for (i=0;i<n;i++){
        c2[j][i]=c2[j][i]+a2[k][i]*b2[j][k];
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+c2[j][i];
    }
  }
  printf("test-2 = %f \n",result);

}

