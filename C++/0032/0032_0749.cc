#include <stdio.h>
int i=1;
int f(int a, int b)
{
  if (a==2 && b==1)
    return 1;
  else
    printf("%d %d\n", a,b);
  return 0;
}
int main()
{
  int j=2;
  if (f(j--,i--) == 1)
    if (j==1 && i==0)
      printf("ok\n");
    else
      printf("ng %d\n", i);
  else
    printf("ng\n");
}
