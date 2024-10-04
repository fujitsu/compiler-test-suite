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
typedef struct TAG {
  int dummy;
  va_list ap;
} my_va_list_t ;

void foo(int i, ...)
{
  long j;

  my_va_list_t my_ap;
  my_va_list_t my_ap1;
  my_va_list_t my_ap2;

  va_start(my_ap.ap, i);
  va_copy(my_ap1.ap,my_ap.ap);
  i = *va_arg(my_ap.ap, int *);
  printf("%d \n", i);
  i = *va_arg(my_ap1.ap, int *);
  printf("%d \n", i);
  j = *va_arg(my_ap.ap, long *);
  printf("%d \n", (int )j);
  j = *va_arg(my_ap1.ap, long *);
  printf("%d \n", (int )j);

  printf("%g \n", *va_arg(my_ap.ap, float *));
  printf("%g \n", *va_arg(my_ap1.ap, float *));
  va_end(my_ap.ap);
}
int main()
{
  int i=2;
  long j=3;
  float f=4.0;
  foo(1,&i,&j,&f);
}
#endif
