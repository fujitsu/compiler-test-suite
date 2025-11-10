#include <stdio.h>

extern int my_printf(const char *, const char *, ...) __attribute__ ((format(printf, 2, 3)));

int main()
{
  my_printf(__func__, "OK\n");
  return 0;
}
