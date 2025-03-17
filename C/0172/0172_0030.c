#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo(int i, ...)
{

  va_list ap;

  va_start(ap, i);
  printf("%d \n", *va_arg(ap, int *));
  va_end(ap);
}
int main()
{
  int i=2;
  foo(1,&i);
}
