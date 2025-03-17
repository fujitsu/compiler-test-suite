#include <stdio.h>

void test() { }

void func()
{
  try {
    test();
  }
  catch (...) {
  }
}

int main()
{
  printf("test ok\n");
  return 0;
}
