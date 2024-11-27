#include <stdio.h>
int get_int(int *x, int *y, int *z);
int main()
{
  int a,b,x,y,z,ans;
  get_int(&x,&y,&z);
  printf("%d,%d,%d\n",x,y,z);
  a=x+y;
  b=z+x;
  ans=a+b;
  printf(" ans = %d\n", ans);
}
int get_int(x,y,z)
int *x,*y,*z;
{
  *x = 2;
  *y = 3;
  *z = 4;
  return 0;
}
