#include <stdio.h>

void test() __attribute__((constructor,destructor));

void test()
{
  puts("test called");
}

int main()
{
  puts("main called");
  return 0;
}
