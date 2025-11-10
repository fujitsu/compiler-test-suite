#include <stdio.h>

__attribute__ ((cold))
void foo()
{
  puts("OK");
}
