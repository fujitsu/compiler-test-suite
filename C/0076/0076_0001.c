#include <stdio.h>
int i = 0;

void bar()
{
  i++;
}

void foo()
{
  i++;
}
int main()
{
   void (*p)() = &bar;
   foo();
   p();
   if( i == 2 ) puts("PASS");
   else         puts("NG");
}
