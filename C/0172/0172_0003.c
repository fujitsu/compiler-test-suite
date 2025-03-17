#include <stdarg.h>
#include <stdio.h>

void func1(int nargs, ...)
{
  va_list ap;
  va_start(ap, nargs);

  if (va_arg(ap, long long int)==4096)
    printf("ok1\n");
  else	
    printf("ng1\n");
  va_end(ap);
}

void func2(int nargs, ...)
{
  va_list ap;
  va_start(ap, nargs);

  if (va_arg(ap, unsigned long long int)==4096)
    printf("ok2\n");
  else	
    printf("ng2\n");
  va_end(ap);
}
int main()
{
  func1(4, (long long int)4096);
  func2(4, (unsigned long long int)4096);
  return 0;
}

