
#include "stdio.h"
#include "math.h"
int main()
{

  int i,j,k;
  double a[100][101],b[100][101],c[100][101],result;
  int m[10];
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      a[j][i]=i;
      b[j][i]=i;
      c[j][i]=i;
      m[i]=i;
    }
  }
#pragma omp parallel for
  for (j=0;j<10;j++){
    for (k=0;k<10;k++){
      for (i=0;i<10;i++){
        if (m[i] > 1 ){
          c[j][i]=c[j][i]+a[k][i]*b[j][k];
        }
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+c[j][i];
    }
   }
  printf("result=%f \n",result);
}
