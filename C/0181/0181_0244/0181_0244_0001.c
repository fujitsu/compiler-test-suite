#include <stdio.h>

int g_val __attribute__ ((deprecated)) = 1;

void foo()
{
  if (g_val == 1) { puts("OK"); }
}
