#include <stdio.h>

#if 1 
int f(long  va_alist)
{
  return (int)va_alist;
}
#else
#include <varargs.h>
int f(long  va_alist)
 {      
    va_list a;
    int i;
    va_start(a);
    i = va_arg(a, int);
    return i;
 }
#endif

int main(){
  if (f(10) == 10)
    printf("ok\n");
  else
    printf("ng %d\n",f(10));
} 
