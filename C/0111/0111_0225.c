#include <stdio.h>
int sub1(foo)
  int foo;
{

  foo=2*foo;
  foo=3*foo;
  foo=4*foo;
  foo=5*foo;
  foo=1*foo;

  if (foo != 120)
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
int sub2()
{
  int foo;
  foo=get(1,1);
  sub1(foo);
}
int main()
{
  sub2();
}









