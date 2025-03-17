

#include <stdio.h>

static void sub(int,int);
int main()
{
  sub(100,10);
  return 0;
}
static void sub(int n1,int n2)
{
  float a[10][100],b[100],c[10][100],d[10][100];
  float a1;
  int i,j;
  int n;
  for (j=0;j<n2;j++) {
    for (i=0;i<n1;i++){
      a[j][i] = i;
      b[i] = i+1;
      c[j][i] = i+2;
      d[j][i] = i+3;
    }
  }
  for (j=0;j<10;j++) {
    n = 1;
    for (i=1;i<100;i++) {
      a[j][n] = a[j][n] +  d[j][i];
      n = n + 1;
      b[n] = b[n] +  d[j][i] + c[j][n]; 
      n = n -1;
      c[j][n] = c[j][n] +  c[j][n] + d[j][i];
    }
  }
  printf(" i=%d j=%d \n",i,j);
  printf(" n = %d \n",n);
  a1 = 0;
  for (j=0;j<10;j++) {
    for (i=0;i<100;i++){
      a1 = a1 + a[j][i] ;
    }
  }
  printf(" sum(a) = %f \n", a1);
  return;
}
