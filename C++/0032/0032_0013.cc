#include <cstdio>

void foo() { throw 1; }
struct C { ~C() { } };

int II = 10;

int func(int i)
{
  C   cobj_1_1[II];
  int cobj_1_2[II];
  while (i) {
    try {
      C   cobj_2_1[II];
      int cobj_2_2[II];
      foo();
    }
    catch(...) {
      printf("1 ");
    }
    i--;
  }

  return 0;
}

int main()
{
  (void)func(1);

  printf("test ok\n");

  return 0;
}
