class test { };

void func()
{
  throw test();
}

#include <cstdio>

int main()
{
  printf("empty class thrown object test\n");

  try {
    func();
  } catch (test) {
    printf("catch OK\n");
  }

  return 0;
}
