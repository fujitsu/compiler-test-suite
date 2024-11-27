
#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

int ATTR(noinline) test_def2(int i)
{
   int i1,i2,j1,j2;
#ifdef __GNUC__
#ifdef __aarch64__
   __asm("mov\t%0,%2\n\tmov\t%1,%2" : "=r"(i1), "=r"(i2) : "r"(i) );
   __asm("mov\t%0,%2\n\tmov\t%1,%2" : "=r"(j1), "=r"(j2) : "r"(i) );
#else
   __asm("movl\t%2,%0\n\tmovl\t%2,%1" : "=r"(i1), "=r"(i2) : "r"(i) );
   __asm("movl\t%2,%0\n\tmovl\t%2,%1" : "=r"(j1), "=r"(j2) : "r"(i) );
#endif
#else
  i1 = i; i2 = i;
  j1 = i; j2 = i;
#endif
   return i1+i2+j1+j2;
}
int main()
{
  int i;
  i=test_def2(2);
  printf("PASS %d\n", i);
}
