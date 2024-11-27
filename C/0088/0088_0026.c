
#include "stdio.h"
#include "math.h"
int main()
{
  int n,i,j,k;
   double a1[10][10],b1[10][10],c1[10][10],result;
   double a2[10][10],b2[10][10],c2[10][10],d2[10][10];
   double a3[10][10],b3[10][10],c3[10][10];
   double a4[10][10],b4[10][10],c4[10][10],d4[10][10];

   n=10;
   for ( j=0;j<n;j++){
     for ( i=0;i<n;i++){
      a1[j][i]=i; 
      b1[j][i]=j;
      c1[j][i]=i;
      a2[j][i]=i;
      b2[j][i]=j;
      c2[j][i]=i;
      d2[j][i]=i;;
      a3[j][i]=i;
      b3[j][i]=j;
      c3[j][i]=i;
      a4[j][i]=i;
      b4[j][i]=j;
      c4[j][i]=i;
      d4[j][i]=i;
    }
  }

  
  for (k=0;k<n;k++){
    for (j=0;j<n;j++){
      for (i=0;i<n;i++){
        c1[j][i]=a1[k][i]*b1[j][k];
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
        c2[j][i]=d2[j][i]+a2[k][i]*b2[j][k];
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

  
#pragma omp parallel for
  for (j=0;j<n;j++){
    for (k=0;k<n;k++){
      for (i=0;i<n;i++){
        c3[j][i]=c3[j][i]+a3[k][i]*b3[j][k]+3;
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+c3[j][i];
    }
  }
  printf("test-3 = %f \n",result);

  
#pragma omp parallel for
  for (j=0;j<n;j++){
    for (k=0;k<n;k++){
      for (i=0;i<n;i++){
        c4[j][i]=d4[j][i]+c4[j][i]+a4[k][i]*b4[j][k];
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+c4[j][i];
    }
  }
  printf("test-4 = %f \n",result);
}
