#include <stdio.h>

__attribute__ ((no_reorder))
void sub1()
{
  puts("OK");
}

__attribute__ ((no_reorder))
void sub2()
{
  puts("OK");
}

void sub3()
{
  puts("OK");
}
