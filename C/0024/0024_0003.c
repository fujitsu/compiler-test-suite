

#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

void foo(int i, ...)
{
  long double tmp,one=1.0;
  va_list my_ap_p;
  va_start(my_ap_p, i);
  tmp =  va_arg(my_ap_p, long double);
  tmp = tmp + one;
  printf("%Lf \n",tmp);
}
int main()
{
  int a=4.0;
  long double f=4.0;
  foo(a,f);
}
