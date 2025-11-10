#include <stdio.h>

__attribute__ ((no_sanitize_thread))
void foo()
{
  puts("OK");
}
