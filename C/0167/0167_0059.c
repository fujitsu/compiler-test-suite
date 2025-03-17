#include <stdio.h>
#include <math.h>
#include <string.h>

#define ANSWER 110.00f

typedef struct{
  float real,imag;
}COMPLEX;
typedef struct{
  float real,imag;
}COMPLEX8;
typedef struct{
  double dreal,dimag;
}COMPLEX16;
typedef struct{
  long double qreal,qimag;
}COMPLEX32;

int main()
{
  int i411[10][10];
  
  float r411[10][10],r412[10][10];
  long double r1601[10]={0,0,0,0,0,0,0,0,0,0};
  int i=1,j;
  double result=0;

  for(i=0;i<10;i++) {
    for(j=0;j<10;j++) {
      i411[j][i]=1;
      r411[j][i]=2;
    }
  }



  for(j=0;j<10;j++)
  {
    r1601[j]=1.;
    for(i=0;i<10;i++)
      r412[i][j]=r411[j][i]*j+i411[i][j];
  }

  for(i=0;i<10;i++) result = result + r412[2][i] + r1601[i];

  if ((result - ANSWER) == 0 ) {
    printf("ok \n");
  } else {
    printf("ng :%lf,%lf \n",result,ANSWER);
  }


  return 1;
}

