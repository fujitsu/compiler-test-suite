
#include "stdio.h"
#include "math.h"
int main()
{
  int n,i,j,k;
   double a1[10][10],b1[10][10],c1[10][10],result;
   float  a4[10][10],b4[10][10],c4[10][10];

   n=10;
   for ( j=0;j<n;j++){
     for ( i=0;i<n;i++){
      a1[j][i]=i; 
      b1[j][i]=j;
      c1[j][i]=i;
      a4[j][i]=i;
      b4[j][i]=j;
      c4[j][i]=i;
    }
  }

  
  for (k=0;k<n;k++){
    for (j=0;j<n;j++){
      for (i=0;i<n;i++){
        c1[j][i]=c1[j][i]-a1[k][i]*b1[j][k];
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
  for (j=0;j<n;j++){
    for (k=0;k<n;k++){
      for (i=0;i<n;i++){
        c4[j][i]=c4[j][i]-a4[k][i]*b4[j][k];
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+c4[j][i];
    }
  }
  printf("test-2 = %f \n",result);

}
