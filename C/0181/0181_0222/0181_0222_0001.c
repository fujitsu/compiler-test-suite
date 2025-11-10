#include <stdio.h>

__attribute__ ((nonnull (1)))
void foo(const char *str)
{
  puts(str);
}

__attribute__ ((nonnull))
void boo(const char *str)
{
  puts(str);
}
