

#include <stdio.h>

static void sub(int,int);
int main()
{
  sub(100,10);
  return 0;
}
static void sub(int n1,int n2)
{
  float a[10][100],b[10][100],c[10][100],d[10][100];
  float ss,a1;
  int i,j;
  for (j=0;j<10;j++) {
    for (i=0;i<100;i++){
      a[j][i] = i;
      b[j][i] = i+1;
      c[j][i] = i+2;
      d[j][i] = i+3;
    }
  }
  ss = 0;
  for (j=0;j<n2;j++) {
    for (i=1;i<n1;i++){
      a[1][i] = a[1][i-1] + d[j][i] + b[j][i] + c[j][i];
      if (j <= 5) {
	ss = ss + c[j][i];
      }
    }
  }
  printf(" i=%d j=%d \n",i,j);
  printf(" ss = %f \n",ss);

  a1 = 0;
  for (j=0;j<10;j++) {
    for (i=0;i<100;i++){
      a1 = a1 + a[j][i] ;
    }
  }
  printf(" sum(a) = %f \n", a1);
  return;
}
