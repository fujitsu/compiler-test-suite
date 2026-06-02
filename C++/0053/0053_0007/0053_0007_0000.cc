#include <stdio.h>
#include <stdlib.h>

extern void test(void);

int ii = 10;
#pragma omp threadprivate(ii)
int main()
{
  test();

  puts("PASS");
}

void dummy(int *p)
{
  if ( p != &ii ) abort();
}
