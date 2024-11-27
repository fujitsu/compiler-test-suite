
#include "stdio.h"
#include "math.h"
int main()
{
  int i,j,k;
  double a[10][101],b[10][101],c[10][10],result,s;

  s = 1;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      a[j][i]=i;
      b[j][i]=i;
      c[j][i]=i;
    }
  }
#pragma omp parallel for
  for (i=0;i<10;i++){
    for (j=0;j<10;j++){
      for (k=0;k<10;k++){
        b[j][i] = b[j][i] + a[k][i]*c[j][k]+s;
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+b[j][i];
    }
  }
  printf("result=%f \n",result);
}
