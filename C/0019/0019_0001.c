/****************************************************************
 * This is a test of using the restrict modifier as an argument.
 * _Bool type
 ****************************************************************/
#include <stdio.h>
#include <stdarg.h>

void restrict_bool(_Bool * restrict p1, ...)
{
  _Bool * restrict p2;
  va_list ap;

  va_start(ap,p1);
  p2 = va_arg(ap, _Bool * restrict);

  *p1 = 1;
  *p2 = 0;

  if (*p1 == 1) {
    printf("restrict : ok\n");
  } else {
    printf("restrict : couldn't optimize\n");
  }
}

int main(void)
{
  _Bool a = 0;
  restrict_bool(&a, &a);
  return 0;
}
