#include <stdio.h>
short foo(short *p)
{
  short v;
#ifdef __GNUC__
#ifdef __aarch64__
  asm ("ldrh w0,%1; mov %0, x0": "=r"(v) : "m"(*p) : "x0" );
#else
  asm ("mov %1,%0": "=r"(v) : "m"(*p) );
#endif
#else
  v = *p;
#endif
  return v;
}
int main()
{
  short x  =  100;
  if( foo(&x) == 100 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
