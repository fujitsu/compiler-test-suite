

#include <stdio.h>

int foo(long i)
{
  long j;
#if __GNUC__
#if defined(__aarch64__)
  asm("mov\t%0,%1" : "=r"(j) : "r"(i) );
#else
  asm("movq\t%1,%0" : "=r"(j) : "r"(i) );
#endif
#else
  j = i;
#endif
  return j;
}
int main()
{
  if( foo(1) == 1 ) {
    puts("PASS");
  }
  else {
    puts("NG");
  }
}
