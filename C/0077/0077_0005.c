#include <stdio.h>
char foo(char *p)
{
  char v;
#ifdef __GNUC__
#ifdef __aarch64__
  asm ("ldrb w0,%1; mov %0, x0": "=r"(v) : "m"(*p) : "x0" );
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
  char x  =  100;
  if( foo(&x) == 100 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
