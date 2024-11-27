#include <stdio.h>

#pragma fini (foo)

static void foo()
{
  puts("END");
}

int main()
{
  puts("PASS");
  foo();
}

