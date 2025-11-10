#include <stdio.h>

extern char *foo() __attribute__ ((returns_nonnull));

int main()
{
  char *str = foo();
  if (str == NULL) { return 0; }

  puts(str);
  return 0;
}
