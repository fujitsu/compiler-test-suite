#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

#if defined(__i386__)
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

my_va_list_t my_ap;
my_va_list_t my_ap1;

void foo(int i, ...)
{
  short j;

  my_va_list_t *my_ap_p;
  my_va_list_t *my_ap1_p;

  my_ap_p = &my_ap;
  my_ap1_p = &my_ap1 ;

  va_start(my_ap_p->ap, i);
  va_copy(my_ap1_p->ap,my_ap_p->ap);

  i = *va_arg(my_ap_p->ap, int *);
  printf("%d \n", i);
  j = *va_arg(my_ap_p->ap, short *);
  printf("%d \n", (int )j);
  printf("%g \n", *va_arg(my_ap_p->ap, double *));

  i = *va_arg(my_ap1_p->ap, int *);
  printf("%d \n", i);
  j = *va_arg(my_ap1_p->ap, short *);
  printf("%d \n", (int )j);
  printf("%g \n", *va_arg(my_ap1_p->ap, double *));

  va_end(my_ap_p->ap);
}
int main()
{
  int i=2;
  short j=3;
  double f=4.0;
  foo(1,&i,&j,&f);
}
#endif
