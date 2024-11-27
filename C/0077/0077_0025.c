#include <stdio.h>

int foo(int j)
{
  if( j == 0 ) {
    return 1;
  }
  else {
    return j;
  }
}

int test_ref0()
{
   int j;
   j = 0;
#ifdef __GNUC__
#ifdef __aarch64__
   __asm("mov    %0, %1" : "=r"(j) : "r"(foo(j)) );
#else
   __asm("movl    %1, %0" : "=r"(j) : "r"(foo(j)) );
#endif
#else
   j = foo(j);
#endif
   return j;
}
int main()
{
  if( test_ref0() == 1 ) {
    puts("OK");
  }
  else {
    puts("NG");
  }
}
