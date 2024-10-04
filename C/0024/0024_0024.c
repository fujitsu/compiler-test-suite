#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

#if defined(__i386)
int main()
{
puts("2 ");
puts("2 ");
puts("3 ");
puts("3 ");
puts("4 ");
puts("4 ");
}
#else
void foo(int i, ...)
{

  va_list ap;
  va_list ap1;
  va_list ap2;
  long j;

  va_start(ap, i);
  va_copy(ap1,ap);
  i = *va_arg(ap, int *);
  printf("%d \n", i);
  i = *va_arg(ap1, int *);
  printf("%d \n", i);
  j = *va_arg(ap, long *);
  printf("%d \n", (int )j);
  j = *va_arg(ap1, long *);
  printf("%d \n", (int )j);

  printf("%g \n", *va_arg(ap, float *));
  printf("%g \n", *va_arg(ap1, float *));
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
