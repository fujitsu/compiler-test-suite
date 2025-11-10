#include <stdio.h>

void foo(const char *arg)
{
  printf("%s - %s\n", arg, __func__);
}
