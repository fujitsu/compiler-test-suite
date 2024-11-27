#include <stdio.h>
int sub(foo)
  int foo;
{

  foo=2+foo;
  foo=3+foo;
  foo=4+foo;
  foo=5+foo;
  foo=1+foo;

  if (foo != 15)
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
int main()
{
  int foo;
  foo=get(0,10);
  sub(foo);
}









