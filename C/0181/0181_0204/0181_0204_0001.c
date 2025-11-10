#include <stdio.h>

__attribute__ ((format(printf, 2, 3)))
int my_printf(const char *name, const char *format, ...)
{
  puts(name);
  printf(format);
  return 0;
}
