#include <stdio.h>

__attribute__ ((no_sanitize_address))
void foo()
{
  puts("OK");
}
