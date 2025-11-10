#include <stdio.h>

static int sub(int n, int a[], int b[])
{
  int i;
  int sum = 0;
  for (i = 0; i < n; ++i) sum = sum + a[i] * b[i];
  return sum;
}

int lto_sub_18()
{
  int a[5] = {0,1,2,3,4};
  int b[5] = {5,6,7,8,9};
  int ans = sub(5,a,b);
  if (ans == 80) {
    puts("OK");
  } else {
    puts("NG");
    printf("%d\n",ans);
  }
}
