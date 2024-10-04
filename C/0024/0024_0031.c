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
typedef struct TAG {
  int dummy;
  va_list ap;
} my_va_list_t ;

my_va_list_t my_ap[2];

void test( my_va_list_t my_ap_p[] )
{
  int   i;
  short j;

  i = *va_arg(my_ap_p[0].ap, int *);
  printf("%d \n", i);
  j = *va_arg(my_ap_p[0].ap, short *);
  printf("%d \n", (int )j);
  printf("%g \n", *va_arg(my_ap_p[0].ap, double *));

  i = *va_arg(my_ap_p[1].ap, int *);
  printf("%d \n", i);
  j = *va_arg(my_ap_p[1].ap, short *);
  printf("%d \n", (int )j);
  printf("%g \n", *va_arg(my_ap_p[1].ap, double *));

}

void foo(int i, ...)
{

  my_va_list_t *my_ap_p;

  my_ap_p = &my_ap;

  va_start(my_ap_p[0].ap, i);
  va_copy(my_ap_p[1].ap,my_ap_p[0].ap);

  test(my_ap_p);

  va_end(my_ap_p[0].ap);
}
int main()
{
  int i=2;
  short j=3;
  double f=4.0;
  foo(1,&i,&j,&f);
}
#endif
