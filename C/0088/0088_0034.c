
#include "stdio.h"
#include "math.h"
int main()
{
  int i,j,k,l;
  double a[10][101],b[10][101],c[10][10],result;
  double d[10][101],e[10][101],f[10][10];

  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      a[j][i]=i;
      b[j][i]=i;
      c[j][i]=i;
      d[j][i]=i;
      e[j][i]=i;
      f[j][i]=i;
    }
  }
  for (l=0;l<3;l++){
    for (j=0;j<10;j++){
      for (i=0;i<10;i++){
        for (k=0;k<10;k++){
          b[j][i] = b[j][i] + a[k][i]*c[j][k];
        }
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

  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      for (k=0;k<10;k++){
        d[j][i] = d[j][i] + e[k][i]*f[j][k];
      }
    }
  }
  result =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result=result+d[j][i];
    }
  }
  printf("result=%f \n",result);
}
