#include <stdio.h>
static int x[2];
int main()
{
   int p;
#ifdef __GNUC__
#ifdef __aarch64__
  asm ("mov\t%0,%1"  : "=r"(p)  : "i"(&x[1]-&x[0]) );
#else
  asm("mov\t%1,%0": "=r"(p) : "i"(&x[1]-&x[0]) );
#endif
#else
  p = &x[1]-&x[0];
#endif
  if( p == &x[1]-&x[0] ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
