#include <stdio.h>

static void sub(int n, int a[], int b[], int c[])
{
  int i;
  for (i = 0; i < n; ++i) if (c[i]) a[i] = b[i];
}

int lto_sub_24()
{
  int a[5] = {0,1,2,3,4};
  int b[5] = {5,6,7,8,9};
  int c[5] = {0,1,1,0,1};
  sub(5,a,b,c);
  if (a[0] == 0 && a[1] == 6 && a[2] == 7 && a[3] == 3 && a[4] == 9) {
    puts("OK");
  } else {
    puts("NG");
    printf("%d,%d,%d,%d,%d\n",a[0],a[1],a[2],a[3],a[4]);
  }
}
