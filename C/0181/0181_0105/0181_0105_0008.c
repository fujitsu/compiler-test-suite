#include <stdio.h>

static void sub(int n, int a[], int b[])
{
  int i;
  for (i = 0; i < n; ++i) a[i] = b[i];
}

int lto_sub_8()
{
  int a[5];
  int b[5] = {0,1,2,3,4};
  sub(5,a,b);
  if (a[0] == 0 && a[1] == 1 && a[2] == 2 && a[3] == 3 && a[4] == 4) {
    puts("OK");
  } else {
    puts("NG");
    printf("%d,%d,%d,%d,%d\n",a[0],a[1],a[2],a[3],a[4]);
  }
}
