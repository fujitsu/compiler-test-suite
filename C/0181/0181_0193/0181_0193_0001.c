#include <stdio.h>
#include <string.h>

void foo(const int len, char arg[len])
{
  strcpy(arg, "variable length array test");
}
