
#include "stdio.h"
#include "math.h"
int main()
{

  int i,j,k,i1;
  double a[100][101],b[100][101],c1[100][101],c2[100][101],result1,result2;

  for (j=0;j<100;j++){
    for (i=0;i<101;i++){
      a[j][i]=i;
      b[j][i]=i;
      c1[j][i]=i;
      c2[j][i]=i;
    }
  }
#pragma omp parallel for
  for (j=0;j<10;j++){
    for (k=0;k<10;k++){
      for (i=0;i<10;i++){
        c1[j][i]=c1[j][i]+a[k][i]*b[j][k];
      }
      for (i1=0;i1<10;i1++){
        c2[j][i]=c2[j][i]+a[k][i]*b[j][k];
      }
    }
  }
  result1 =0;
  result2 =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result1=result1+c1[j][i];
      result2=result2+c2[j][i];
    }
   }
  printf("result1=%f \n",result1);
  printf("result2=%f \n",result2);
}
