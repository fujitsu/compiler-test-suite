#include <stdarg.h>

extern int varargs_func(int n, ...)
{
  int i, max;
  va_list ap;
  va_start(ap, n);
  max = 0;
  for (i = 0; i < n; ++i) {
    int data = va_arg(ap, int);
    if (data > max) {
      max = data;
    }
  }
  va_end(ap);
  return max;
}

