#include <stdio.h>

void sub(int n, int a[], int b[], int c[], int d[])
{
  int i;
  for (i = 0; i < n; ++i) d[i] = c[i] + a[i] * b[i];
}
int main()
{
  int a[5] = {0,1,2,3,4};
  int b[5] = {5,6,7,8,9};
  int c[5] = {10,11,12,13,14};
  int d[5];
  sub(5,a,b,c,d);
  if (d[0] == 10 && d[1] == 17 && d[2] == 26 && d[3] == 37 && d[4] == 50) {
    puts("OK");
  } else {
    puts("NG");
    printf("%d,%d,%d,%d,%d\n",d[0],d[1],d[2],d[3],d[4]);
  }
}
