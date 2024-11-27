#include <stdio.h>
double x,y;

#if SECOND_STACK
foo1()
{
  asm volatile ("/* %0 */"  : : "u"(x));
}
#endif

#if FE_ERROR_CLOBBER
foo2()
{
  asm volatile ("/* %1 %0 */"  : "=t"(x) : "0"(x) : "st" );
}
#endif

#if FE_ERROR_FP_SECOND_REG
foo3()
{
  asm volatile ("/* %1 %0 %2 */"  : "=t"(x)  : "0"(x), "u"(x), "u"(y) );
}
#endif
int main()
{
  puts("OK");
}
