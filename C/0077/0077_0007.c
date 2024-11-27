#include <stdio.h>
long long foo(long long *p)
{
  long long v;
#ifdef __GNUC__
#ifdef __aarch64__
  asm ("ldr %0,%1": "=r"(v) : "m"(*p) );
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
  long long x  =  100;
  if( foo(&x) == 100 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
