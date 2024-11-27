#include <stdio.h>
int foo(int *p)
{
  int v;
#ifdef __GNUC__
#ifdef __aarch64__
  asm ("ldr w0,%1; mov %0, x0": "=r"(v) : "m"(*p) : "x0" );
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
  int x  =  100;
  if( foo(&x) == 100 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
