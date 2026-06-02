#include <stdio.h>

extern void test(void);
int main()
{
  static __thread int ii;

  ii = 10;

  test();

  puts("PASS");
}

void dummy(int *p)
{

}
