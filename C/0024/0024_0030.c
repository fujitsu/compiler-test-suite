#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

#if defined(__i386)
int main()
{
puts("2 ");
puts("3 ");
puts("4 ");
puts("2 ");
puts("3 ");
puts("4 ");
}
#else
void test(va_list ap)
{
  int i;
  long j;

  i = *va_arg(ap, int *);
  printf("%d \n", i);
  j = *va_arg(ap, long *);
  printf("%d \n", (int )j);
  printf("%g \n", *va_arg(ap, float *));
}

void foo(int i, ...)
{
  long j;

  va_list ap;
  va_list ap1;

  va_start(ap, i);
  va_copy(ap1,ap);
  test(ap1);

  i = *va_arg(ap, int *);
  printf("%d \n", i);
  j = *va_arg(ap, long *);
  printf("%d \n", (int )j);

  printf("%g \n", *va_arg(ap, float *));
  va_end(ap);
}
int main()
{
  int i=2;
  long j=3;
  float f=4.0;
  foo(1,&i,&j,&f);
}
#endif
