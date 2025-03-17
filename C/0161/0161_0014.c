#include <stdio.h>
int main( ) {
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
 int *aa,*bb;
 aa = (int *)&aa;
 bb = (int *)&aa;
#else
 long long int a,b,c;
 long long int *aa,*bb;
 a=10;b=10;
 asm("add  {&a},%gr0,%gr30");
 asm("add  {&b},%gr0,%gr31");
 asm("add  %gr30,%gr0,[aa]");
 asm("add  %gr31,%gr0,[bb]");
#endif
 if (*aa==*bb)
   printf("**ok\n");
 else
   printf("**ng *aa=%d *bb=%d\n",aa,bb);
}

