#include <stdio.h>

void sub(int n, int a[], int b[])
{
  int i;
  for (i = 0; i < n; ++i) a[i+1] = a[i] + b[i];
}
int main()
{
  int a[5] = {0,1,2,3,4};
  int b[5] = {5,6,7,8,9};
  sub(4,a,b);
  if (a[0] == 0 && a[1] == 5 && a[2] == 11 && a[3] == 18 && a[4] == 26) {
    puts("OK");
  } else {
    puts("NG");
    printf("%d,%d,%d,%d,%d\n",a[0],a[1],a[2],a[3],a[4]);
  }
}
