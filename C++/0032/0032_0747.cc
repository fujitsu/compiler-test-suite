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
  int a=2;
  int j=a++;
  struct A {
    int a[4];
  }aobj={i++,i, j+i++,i++ + j};
  if (f(aobj.a[0],aobj.a[1],aobj.a[2],aobj.a[3],i++) == 1)
    if (a==3 && i==5)
      printf("ok\n");
    else
      printf("ng %d\n", i);
  else
    printf("ng\n");
}
