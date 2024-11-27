
#include "stdio.h"
#include "math.h"
int main()
{
  int i,j,k,m;
  float  a4[10][10],b4[10][10],c4[10][10];
  double a8[10][10],b8[10][10],c8[10][10];
  float  result4;
  double result8;

  m=1;
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
  for (j=0;j<10;j=j+m){
    for(k=0;k<10;k=k+m){
      for (i=0;i<10;i=i+m){
        if (i < 0){
           a4[j][i]=a4[j][i]+b4[k][i]*c4[j][k];
        }
      }
    }
  }
  result4 =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result4=result4+a4[j][i];
    }
  }
  printf("result=%f \n",result4);

  
  
#pragma omp parallel for
  for (j=0;j<10;j=j+m){
    if (j < 5){    
      for(k=0;k<10;k=k+m){
        for (i=0;i<10;i=i+m){
          a8[j][i]=a8[j][i]+b8[k][i]*c8[j][k];
        }
      }
    }
  }
  result8 =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result8=result8+a8[j][i];
    }
  }
  printf("result=%f \n",result8);
}

