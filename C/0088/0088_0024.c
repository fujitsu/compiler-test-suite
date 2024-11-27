
#include "stdio.h"
#include "math.h"
int main()
{
   int n,i,j,k;
   double a1[10][10],b1[10][10],c1[10][10],result;
   double a2[10][10],b2[10][10],c2[10][10];
   double a3[10][10],b3[10][10],c3[10][10];
   double a4[10][10],b4[10][10],c4[10][10];
   double a5[10][10],b5[10][10],c5[10][10];

   n=10;
   for ( j=0;j<n;j++){
     for ( i=0;i<n;i++){
      a1[j][i]=i; 
      b1[j][i]=j;
      c1[j][i]=i;
      a2[j][i]=i;
      b2[j][i]=j;
      c2[j][i]=i;
      a3[j][i]=i;
      b3[j][i]=j;
      c3[j][i]=i;
      a4[j][i]=i;
      b4[j][i]=j;
      c4[j][i]=i;
      a5[j][i]=i;
      b5[j][i]=j;
      c5[j][i]=i;
    }
  }

  
  for (k=0;k<n;k++){
    for (j=0;j<n;j++){
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

  
  for (j=0;j<n;j++){
    for (k=0;k<n;k++){
      for (i=0;i<n;i++){
        c2[j][i]=c2[3][i]+a2[k][i]*b2[j][k];
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
        c3[j][1]=c3[j][1]+a3[k][i]*b3[j][k];
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
        c4[j][1]=c4[j][i]+a4[k][j]*b4[k][k];
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

  
  for (j=0;j<n;j++){
    for (k=0;k<n;k++){
      for (i=0;i<n;i++){
        c5[i][i]=c5[i][i]+a5[j][j]*b5[k][k];
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+c5[j][i];
    }
  }
  printf("test-5 = %f \n",result);
}
