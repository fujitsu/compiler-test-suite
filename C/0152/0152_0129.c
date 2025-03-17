

#include <stdio.h>
static void sub();
int main()
{
  sub();
  return 0;
}
static void sub()
{
  float a[10][100],b[10][100],c[10][100],d[10][100];
  float a1,a2;
  int i,j;
  for (j=0;j<10;j++) {
    for (i=0;i<100;i++){
      a[j][i] = i;
      b[j][i] = i+1;
      c[j][i] = i+2;
      d[j][i] = i+3;
    }
  }
  j=1;
  for (i=2;i<100;i++){
    c[j][i] = a[j][i-1] + d[j][i];
    a[j][i] = b[j][i] * d[j][i] + c[j][j];
  }
  printf(" i=%d j=%d \n",i,j);
  a1 = 0;
  a2 = 0;
  for (j=0;j<10;j++) {
    for (i=0;i<100;i++){
      a1 = a1 + a[j][i] ;
      a2 = a2 + c[j][i];
    }
  }
  printf(" sum(a) = %f \n", a1);
  printf(" sum(c) = %f \n", a2);
  return;
}
