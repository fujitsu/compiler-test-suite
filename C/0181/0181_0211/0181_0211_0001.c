#include <stdio.h>

__attribute__ ((no_icf))
void foo()
{
  puts("OK");
}

__attribute__ ((no_icf))
void boo()
{
  puts("OK");
}
