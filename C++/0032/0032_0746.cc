#include <stdio.h>
int i=1;
int f(int a, int b, int c, int d, int e)
{
  if (a==1 && b==2 && c==4 && d==5 && e==4)
    return 1;
  else
    printf("%d %d %d %d %d\n", a,b,c,d,e);
  return 0;
}
int main()
{
  int j=2;
  int a[]={i++,i, j+i++,i++ + j};
  if (f(a[0],a[1],a[2],a[3],i++) == 1)
    if (i==5)
      printf("ok\n");
    else
      printf("ng %d\n", i);
  else
    printf("ng\n");
}
