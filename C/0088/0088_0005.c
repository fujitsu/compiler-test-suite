
#include "stdio.h"
#include "math.h"
int main()
{
  int i,j,k;
  float  a4[10][10],b4[10][10],c4[10][10];
  double a8[10][10],b8[10][10],c8[10][10];
  float  result4;
  double result8;

  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      a4[j][i] = i+2;
      b4[j][i] = j+1;
      c4[j][i] = j+1;
      a8[j][i] = i+2;
      b8[j][i] = j+1;
      c8[j][i] = j+1;
    }
  }

  
#pragma omp parallel for
  for (j=2;j<7;j++){
    for(k=3;k<7;k++){
      for (i=4;i<6;i++){
        c4[j][i]=c4[j][i]+a4[j][i]*b4[i][k];
      }
    }
  }
  result4 =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result4=result4+c4[j][i];
    }
  }
  printf("result(float)=%f \n",result4);

  
#pragma omp parallel for
  for (j=1;j<5;j++){
    for(k=2;k<7;k++){
      for (i=3;i<6;i++){
         c8[j][i]=c8[j][i]+a8[j][i]*b8[i][k];
      }
    }
  }
  result8 =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result8=result8+c4[j][i];
    }
  }
  printf("result(double)=%f \n",result8);
}
