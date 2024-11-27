
#include "stdio.h"
#include "math.h"
int main()
{
  int i,j,k;
  double a[10][11];
  double b[10][11];
  double c[10][11];
  double result;

  for (j=0;j<10;j++){
    for (i=0;i<11;i++){
     a[j][i] = i+2;
     b[j][i] = j+1;
     c[j][i] = j+1;
   }
  }

#pragma omp parallel for
  for (j=0;j<10;j++){
    for(k=0;k<10;k++){
      for (i=0;i<10;i++){
	c[j][i]=c[j][i]+a[k][i]*b[j][k];
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<11;i++){
      result=result+c[j][i];
    }
  }
  printf("result=%f \n",result);

}

