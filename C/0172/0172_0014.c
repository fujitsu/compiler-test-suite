#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
                 
void foo(int i, ...)
{
  double tmp,one=1.0;
  va_list my_ap_p;
  va_start(my_ap_p, i);
  tmp =  va_arg(my_ap_p, double);
  printf("%f \n",tmp);
  tmp =  (double)va_arg(my_ap_p, int);
  printf("%f \n",tmp);
  tmp =  va_arg(my_ap_p, double);
  printf("%f \n",tmp);
}
int main()
{
  foo( 1, 4.0, 2, 5.0, 3, 6.0);
}
