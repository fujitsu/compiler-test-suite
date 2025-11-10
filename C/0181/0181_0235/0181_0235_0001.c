#include <stdio.h>

__attribute__ ((weak))
void foo()
{
  puts("OK");
}
