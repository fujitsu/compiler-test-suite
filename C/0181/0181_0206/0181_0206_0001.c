#include <stdio.h>

__attribute__ ((noinline))
void sub1()
{
  puts("sub1: OK");
}

__attribute__ ((visibility ("default")))
void sub2()
{
  puts("sub2: OK");
}

__attribute__ ((visibility ("hidden")))
void sub3()
{
  puts("sub3: OK");
}

__attribute__ ((visibility ("internal")))
void sub4()
{
  puts("sub4: OK");
}

__attribute__ ((visibility ("protected")))
void sub5()
{
  puts("sub5: OK");
}

void foo()
{
  sub1();
  sub2();
  sub3();
  sub4();
  sub5();
}
