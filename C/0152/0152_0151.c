

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
  float a[10][100],b[100],c[10][100],d[10][100];
  float a1,a2;
  int i,j,m1,m2;

  for (j=0;j<n2;j++) {
    for (i=0;i<n1;i++){
      a[j][i] = i;
      b[i] = i+1;
      c[j][i] = i+2;
      d[j][i] = i+3;
    }
  }
  for (j=0;j<n2;j++) {
    m2 = 0;
    for (i=0;i<n1/2;i++) {
      m1 = m2 + 1;
      a[j][i] = b[m1] +  d[j][i];
      m2 = m1 + 1;
      b[m1] = c[j][i] +  a[j][i];
    }
  }
  printf(" i=%d j=%d \n",i,j);
  printf(" m1 = %d \n",m1);
  printf(" m2 = %d \n",m2);
  a2 = 0;
  for (j=0;j<10;j++) {
    for (i=0;i<100;i++){
      a1 = a1 + a[j][i] ;
      a2 = a2 + b[i] ;
    }
  }
  printf(" sum(a) = %f \n", a1);
  printf(" sum(c) = %f \n", a2);
  return;
}
