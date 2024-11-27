
#include "stdio.h"
#include "math.h"
int main()
{
  int n,i,j,k,l;
   double c1[10][10],b1[5][10][10],a1[5][10][10],result;
   double c2[10][10],b2[5][10][10],a2[5][10][10];
   float  c3[10][10],b3[5][10][10],a3[5][10][10];
   float  c4[10][10],b4[5][10][10],a4[5][10][10];

   n=10;
   for ( j=0;j<n;j++){
     for ( i=0;i<n;i++){
      c1[j][i]=i+1; 
      c2[j][i]=i+1;
      c3[j][i]=i+1;
      c4[j][i]=i+1;
    }
  }
  for ( k=0;k<5;k++){
    for ( j=0;j<n;j++){
      for ( i=0;i<n;i++){
        b1[k][j][i]=i+1; 
        a1[k][j][i]=i+1; 
        b2[k][j][i]=i+1; 
        a2[k][j][i]=i+1; 
        b3[k][j][i]=i+1; 
        a3[k][j][i]=i+1; 
        b4[k][j][i]=i+1; 
        a4[k][j][i]=i+1; 
      }
    }
  }
  
  for (k=1;k<n;k++){
    for (j=1;j<n;j++){
      for (i=1;i<n;i++){
        c1[j][i]=c1[j][i]+a1[1][k][i]*b1[2][j][k];
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

  
  for (l=0;l<5;l++){
   for (j=0;j<n-1;j++){
    for (k=0;k<n-1;k++){
      for (i=0;i<n-1;i++){
        c2[j][i]=c2[j][i]+a2[l][k][i]*b2[l][j][k];
      }
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
  for (i=1;i<n;i++){
    for (j=0;j<n;j++){
      for (k=0;k<5;k++){
        c3[j][i]=c3[j][i]+a3[k][k][i]*b3[k][j][k];
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
  for (i=0;i<5;i++){
    for (j=0;j<5;j++){
      for (k=0;k<n;k++){
        c4[j][i]=c4[j][i]+a4[i][k][i]*b4[j][j][k];
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
