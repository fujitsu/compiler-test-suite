#include <stdio.h>
int main( ) {
 int a,c;
 a=10;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
  c = a +10;
#else
 asm("addi5  {a},10,[c]");
#endif
 if (c==20)
   printf("** ok\n");
 else
   printf("** ng result=%d\n",c);
}

