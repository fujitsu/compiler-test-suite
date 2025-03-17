#include <stdio.h>
#include <wchar.h>
#include <stdarg.h>

int sub(int a, ...){

  va_list ap;
  int n;
  int   i;

  va_start(ap, a);
  i = (long)*(va_arg(ap, long *));
  printf("  1  = %d \n", i);
  printf("  2  = %ls \n",  va_arg(ap, wchar_t *));
  va_end(ap);

  va_start(ap, a);
  n = vswscanf(L"20 bbb", L"%d%s", ap);
  printf(" num = %d \n",n);
  va_end(ap);

  va_start(ap, a);
  i = (long)*(va_arg(ap, long *));
  printf("  1  = %d \n", i);
  printf("  2  = %s \n",  va_arg(ap, char *));
  va_end(ap);

  return 0;
}
int main()
{

  long i=50;
  wchar_t name[] = {L"aaa"};
  sub(4,&i,name);

}
