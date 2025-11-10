#include <stdio.h>

__attribute__ ((no_sanitize_undefined))
void foo()
{
  puts("OK");
}
