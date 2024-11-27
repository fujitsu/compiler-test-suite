
#include "stdio.h"
#include "math.h"
static void iteration(int*n1,int*n2);
int main()
{
  int i,j,k,n1,n2;
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

  
  iteration(&n1,&n2);
  printf("n1,n2 =%d %d \n",n1,n2);

#pragma omp parallel for
  for (j=n1;j<n2;j++){
    for(k=n1;k<n2;k++){
      for (i=n1;i<n2;i++){
        c4[i][j]=c4[i][j]+a4[i][k]*b4[k][j];
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

  
  iteration(&n1,&n2);
  printf("n1,n2 =%d %d \n",n1,n2);

#pragma omp parallel for
  for (j=n1;j<n2;j++){
    for(k=n1;k<n2;k++){
      for (i=n1;i<n2;i++){
         c8[i][j]=c8[i][j]+a8[i][k]*b8[k][j];
      }
    }
  }
  result8 =0;
  for (j=0;j<10;j++){
    for (i=0;i<10;i++){
      result8=result8+c8[j][i];
    }
  }
  printf("result(double)=%f \n",result8);
}
static void iteration(int*n1,int*n2)
{
  *n1=0;
  *n2=10;
  return ;
}  
