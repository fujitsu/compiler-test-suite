#include <stdio.h>

extern void test(void);
int main()
{
  test();

  puts("PASS");
}

void dummy(int *p)
{
}
