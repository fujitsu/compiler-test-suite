#include <stdio.h>
#ifdef __GNUC__ 
asm("/* test */");
#endif
int main()
{
  puts("PASS");
}
