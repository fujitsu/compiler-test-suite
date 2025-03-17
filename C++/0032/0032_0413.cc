#include <stdio.h>
#include <stdarg.h>

int a;

void func(int param,...)
{
  va_list ap;
  va_start(ap, param);
  a = va_arg(ap, int);
  va_end(ap);
}

int main()
{
  func(1, 2);
  if (a != 2) printf("NG\n");
  printf("test ok\n");
  return 0;
}
