
#include "stdio.h"
#include "math.h"
int main()
{
  int i,j,k,l;
  double a[10][10],b[10][10],c[10][10],result;

  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      a[j][i]=i;
      b[j][i]=i;
      c[j][i]=i;
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
}
