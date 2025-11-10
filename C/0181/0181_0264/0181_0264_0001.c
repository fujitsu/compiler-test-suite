#include <stdarg.h>

int foo(int num, ...)
{
  int sum = 0;
  va_list list;
  
  va_start(list, num);

  int i;
  for (i = 0; i < num; ++i) {
    sum += va_arg(list, int);
  }

  return sum;
}
