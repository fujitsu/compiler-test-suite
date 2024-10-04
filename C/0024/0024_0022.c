#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo(int j, ...)
{
  int i;

  va_list ap;

#ifndef OBE
  va_start(ap, i);
#else
  va_start(ap, j);
#endif

  va_end(ap);

}
int main()
{
  foo(4,1,2,3);
}
