/* test for reference DATAFLOW */

#include <stdio.h>

int foo(long i)
{
  #if __GNUC__
    #if defined(__aarch64__)
      asm("mov\tx0,%0" : : "r"(i) );
    #else
      asm("movq\t%0,%%rax" : : "g"(i) );
    #endif
    return i;
  #else
    return i;
  #endif
}
int main()
{
  if( foo(1) == 1 ) {
    puts("PASS");
  }
  else {
    puts("NG");
  }
}
