#include <stdio.h>
void foo(short *p, short v)
{
#ifdef __GNUC__
#ifdef __aarch64__
  asm ("mov x0, %1; strh w0,%0": "=m"(*p) : "r"(v) : "x0" );
#else
  asm ("mov %1,%0": "=m"(*p) : "r"(v) );
#endif
#else
  *p = v;
#endif
}
int main()
{
  short x  =  0;
  foo(&x, 100);
  if( x == 100 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
