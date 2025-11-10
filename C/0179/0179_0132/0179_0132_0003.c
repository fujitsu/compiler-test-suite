#include <stdio.h>

volatile int a[1];

void volatile_sub(void) 
{
  a[0] = 1;
  if (a[0] == 1) printf("ok: %d\n", a[0]);
  else           printf("ng: %d\n", a[0]);
}

