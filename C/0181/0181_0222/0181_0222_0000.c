#include <stdio.h>

extern void foo(const char *) __attribute__ ((nonnull (1)));
extern void boo(const char *) __attribute__ ((nonnull));

int main()
{
  foo("OK");
  boo("OK");
  return 0;
}
