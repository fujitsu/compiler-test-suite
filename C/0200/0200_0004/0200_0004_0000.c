#include <stdio.h>
#include <stdlib.h>

extern void test(void);

extern __thread int ii;
int main()
{
  test();

  puts("PASS");
}

void dummy(int *p)
{
  if ( p != &ii ) abort();
}
