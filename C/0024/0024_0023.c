#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo(register int i, ...)
{
  va_list ap;

  va_start(ap, i);

  va_end(ap);

}
int main()
{
  foo(4,1,2,3);
}
