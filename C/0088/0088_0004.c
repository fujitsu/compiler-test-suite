
#include "stdio.h"
#include "math.h"
int main()
{
  int i,j,k;
  float  a4[11][11],b4[11][11],c4[11][11];
  double a8[11][11],b8[11][11],c8[11][11];
  float  result4;
  double result8;


  for (j=0;j<11;j++){
    for (i=0;i<11;i++){
      a4[j][i] = i+2;
      b4[j][i] = j+1;
      c4[j][i] = j+1;
      a8[j][i] = i+2;
      b8[j][i] = j+1;
      c8[j][i] = j+1;
    }
  }

  
#pragma omp parallel for
  for (j=0;j<8;j++){
    for(k=1;k<9;k++){
      for (i=2;i<10;i++){
        c4[i][j]=c4[i][j]+a4[i][k]*b4[k][j];
      }
    }
  }
  result4 =0;
  for (j=0;j<11;j++){
    for (i=0;i<11;i++){
      result4=result4+c4[j][i];
    }
  }
  printf("result(float)=%f \n",result4);

  
#pragma omp parallel for
  for (j=0;j<10;j++){
    for(k=1;k<9;k++){
      for (i=2;i<8;i++){
         c8[i][j]=c8[i][j]+a8[i][k]*b8[k][j];
      }
    }
  }
  result8 =0;
  for (j=0;j<11;j++){
    for (i=0;i<11;i++){
      result8=result8+c4[j][i];
    }
  }
  printf("result(double)=%f \n",result8);
}

