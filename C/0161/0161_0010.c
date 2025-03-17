#include <stdio.h>
int main( ) {
 int a,b,c;
 a=10;b=10;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
 c = a + b;
#else
 asm("add  {a},%gr0,%gr30");
 asm("add  {b},%gr0,%gr31");
 asm("add  %gr30,%gr31,[c]");
#endif
 if (c==20)
   printf("** ok\n");
 else
   printf("** ng result=%d\n",c);
}

