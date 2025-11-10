#include <stdio.h>

__attribute__ ((section("foo_test")))
void foo()
{
  puts("OK");
}
