#include <stdio.h>
void foo(long long *p, long long v)
{
#ifdef __GNUC__
#ifdef __aarch64__
  asm ("str %1,%0": "=m"(*p) : "r"(v) );
#else
  asm ("mov %1,%0": "=m"(*p) : "r"(v) );
#endif
#endif
  *p = v;
}
int main()
{
  long long x  =  0;
  foo(&x, 100);
  if( x == 100 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
