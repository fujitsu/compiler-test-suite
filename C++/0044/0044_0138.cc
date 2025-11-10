#include <cstdio>

void test()
{
  throw (throw 1, 0);
}

int main()
{
  try {
    test();
  }
  catch (int i) {
    if (i == 1) {
      printf("OK\n");
    } else {
      printf("NG value = %d\n", i);
    }
  }
  return 0;
}
