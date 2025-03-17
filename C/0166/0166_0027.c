#include <stdio.h>
#include <limits.h>

int sub(int n)
{
  int i;
  int sum = 0;
  for (i = 0; i < n; ++i) ++sum;
  return sum;
}
int main()
{
  int ans = sub(INT_MAX);
  if (ans == INT_MAX) {
    puts("OK");
  } else {
    puts("NG");
    printf("%d\n",ans);
  }
}
