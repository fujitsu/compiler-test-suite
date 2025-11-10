#include <stdio.h>

static void func1(const char c[static const restrict volatile 3])
{
  puts(c);
}

void sub1()
{
  func1("OK");
}

