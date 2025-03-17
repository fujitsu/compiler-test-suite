#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo(int i, ...)
{

  va_list ap;

  va_start(ap, i);
  i = *va_arg(ap, int *);
  printf("%d \n", i);
  va_end(ap);
}
int main()
{
  int i=2;
  foo(1,&i);
}
