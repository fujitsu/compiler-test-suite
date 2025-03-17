#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo(void (*fun)(void (*)(), ...), ...)
{
  va_list ap;

  va_start(ap, fun);

  va_end(ap);

}
int main()
{
  foo((void *)foo,1,2,3);
}
