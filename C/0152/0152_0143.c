

#include <stdio.h>

static void sub(int,int,short int,short int);
int main()
{
  short int n,nn;
  n = 0;
  nn = 0;
  sub(100,10,n,nn);
  printf(" n = %d \n",n);
  printf(" nn = %d \n",nn);
  return 0;
}
static void sub(int n1,int n2,short int n,short int nn)
{
  float a[10][100],b[100],c[10][100],d[10][100];
  float a1;
  int i,j;

  for (j=0;j<n2;j++) {
    for (i=0;i<n1;i++){
      a[j][i] = i;
      b[i] = i+1;
      c[j][i] = i+2;
      d[j][i] = i+3;
    }
  }
  for (j=1;j<n2;j++) {
    nn = 1;
    n = 1;
    for (i=1;i<49;i++) {
      a[j][n] = a[j][n] +  d[j][n];
      nn = nn + 1;
      b[nn] = b[nn] +  d[j][i] + j;
      n = n + 1;
      c[1][n] = c[1][n] +  d[j][i] + i;
    }
  }
  printf(" i=%d j=%d \n",i,j);
  printf(" n = %d \n",n);
  printf(" nn = %d \n",nn);
  a1 = 0;
  for (j=0;j<10;j++) {
    for (i=0;i<100;i++){
      a1 = a1 + a[j][i] ;
    }
  }
  printf(" sum(a) = %f \n", a1);
  return;
}
