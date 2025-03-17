#include <stdio.h>
class A { public: int i; };
class B : public A { public: int j; };
B bobj;
A aobj = bobj;
int main()
{
  if (aobj.i == 0 && bobj.j == 0)
    printf("ok\n");
  else
    printf("ng\n");
}

