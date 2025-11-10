#include <stdio.h>

__attribute__ ((stack_protect))
void foo()
{
  puts("OK");
}
