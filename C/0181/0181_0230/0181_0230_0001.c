#include <stdio.h>
#include <stdarg.h>

__attribute__ ((sentinel))
int foo(const char *str, ...)
{
  va_list list;

  printf("%s", str);

  va_start(list, str);
  void *arg = va_arg(list, void *);
  va_end(list);

  if (arg == NULL) { return 1; }

  return -1;
}
