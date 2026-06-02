#include <stdio.h>
#include <stdlib.h>

extern void test(void);

__thread int ii = 10;
int main()
{
  test();

  puts("PASS");
}

void dummy(int *p)
{
  if ( p != &ii ) abort();
}
