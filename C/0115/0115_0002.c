#include <stdio.h>
#pragma init (foo)

void foo()
{
  puts("START");
}
int main()
{
  foo();

  puts("PASS");
}
