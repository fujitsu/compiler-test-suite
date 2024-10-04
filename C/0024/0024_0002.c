#include <stdio.h>
#include <stdarg.h>

typedef int ** test_t;

int sub(int num, ...)
{
  va_list ap;
  int a;
  va_start(ap, num);

  a = (int)va_arg(ap, unsigned  int * );
  a = (int)va_arg(ap, unsigned  int ** );
  a = (int)va_arg(ap, unsigned  int *** );
  
#if defined (x86_64)  
  a = va_arg(ap, unsigned  int (*) );
  a = va_arg(ap, unsigned  int *(*) );
  a = va_arg(ap, unsigned  int **(*) );
  a = va_arg(ap, unsigned  int ***(*) );
  a = va_arg(ap, unsigned  int *(**) );
  a = va_arg(ap, unsigned  int *(*(*)) );
  a = va_arg(ap, unsigned  int *(*(*(*))) );
  a = va_arg(ap, unsigned  int (*(*(*))) );
  a = va_arg(ap, unsigned  int (*(*(((*))))) );
#endif
  printf("  1  = %d  \n",a);
  va_end(ap);
}
int main()
{
  printf("OK\n");
}
