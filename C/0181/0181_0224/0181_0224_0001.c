#include <stdio.h>
#include <stdlib.h>

__attribute__ ((noreturn))
void foo()
{
  puts("OK");
  exit(0);
}
