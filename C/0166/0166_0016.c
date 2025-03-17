#include <stdio.h>

int sub(int n, int a[])
{
  int i;
  int sum = 0;
  for (i = 0; i < n; ++i) sum += a[i];
  return sum;
}
int main()
{
  int a[5] = {0,1,2,3,4};
  int ans = sub(5,a);
  if (ans == 10) {
    puts("OK");
  } else {
    puts("NG");
    printf("%d\n",ans);
  }
}
