

#include <stdio.h>
#include <math.h>

static void sub(int,int);
int main()
{
  sub(100,10);
  return 0;
}
static void sub(int n1,int n2)
{
  float a[10][100],b[10][100],c[10][100],d[10][100];
  float a1;
  int i,j;
  int n;

  for (j=0;j<n2;j++) {
    for (i=0;i<n1;i++){
      a[j][i] = i;
      b[j][i] = i+1;
      c[j][i] = i+2;
      d[j][i] = i+3;
    }
  }
  j =2;
  n = 1;
  for (i=0;i<50;i++) {
    c[j][i] = c[j][i] +  d[j][n];
    if (fmod(i,2) == 0) {
      a[j][n] = a[j][n] +  d[j][n];
    }else{
      b[j][n] = b[j][n] +  d[j][n];
      n = n + 1;
    }
    if (fmod(i,4) == 0) {
      a[j][n] = a[j][n] +  d[j][n];
    }else{
      b[j][n] = b[j][n] +  d[j][n];
      n = n + 1;
    }
    n = n - 1;
  }
  printf(" i=%d j=%d \n",i,j);
  a1 = 0;
  for (j=0;j<10;j++) {
    for (i=0;i<100;i++){
      a1 = a1 + a[j][i] ;
    }
  }
  printf(" sum(a) = %f \n", a1);
  return;
}
