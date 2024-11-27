#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int sub1(foo)
  int foo;
{

  foo=2-foo;
  foo=3-foo;
  foo=4-foo;
  foo=5-foo;
  foo=1-foo;

  if (foo != -1)
    {
      printf("NG -x \n");
    }else{
      printf("OK -x \n");
    }
}
int get(a)
int a;
{
  return a;
}
int sub2(foo)
int foo;
{
  sub1(foo);
}
int main()
{
  int foo;
  foo=get(0,10);
  sub2(foo);
exit (0);
}









