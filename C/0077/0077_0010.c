#include <stdio.h>
void foo(int *p, int v)
{
#ifdef __GNUC__
#ifdef __aarch64__
  asm ("mov x0, %1; str w0,%0": "=m"(*p) : "r"(v) : "x0" );
#else
  asm ("mov %1,%0": "=m"(*p) : "r"(v) );
#endif
#else
  *p = v;
#endif
}
int main()
{
  int x  =  0;
  foo(&x, 100);
  if( x == 100 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
