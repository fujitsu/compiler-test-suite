

#include <stdio.h>

static void sub(int ,int);
int main()
{
  sub(100,10);
  return 0;
}
static void sub(int n1,int n2)
{
  float a[10][100],b[100],c[10][100],d[10][100];
  float a1,a2;
  int i,j;
  long int n;

  for (j=0;j<n2;j++) {
    for (i=0;i<n1;i++){
      a[j][i] = i;
      b[i] = i+1;
      c[j][i] = i+2;
      d[j][i] = i+3;
    }
  }
  for (j=1;j<10;j++) {
    n = 1;
    for (i=0;i<49;i++){
      a[1][i] = a[1][i] + d[j][n];
      n = n + 1;
      b[n] = b[n] + c[j][i] + a[j][i];
      n = n + 1;
      c[1][n] = c[1][n] + c[j][i] + a[j][i];
    }
  }
  printf(" i=%d j=%d \n",i,j);
  printf(" n = %d \n",n);
  a1 = 0;
  a2 = 0;
  for (j=0;j<10;j++) {
    for (i=0;i<100;i++){
      a1 = a1 + a[j][i] ;
      a2 = a2 + b[i] ;
    }
  }
  printf(" sum(a) = %f \n", a1);
  printf(" sum(b) = %f \n", a2);
  return;
}
