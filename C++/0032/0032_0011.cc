#include <cstdio>

void foo() { printf(" 1 ");; }
void bar() { printf(" 2 ");; }
struct C { ~C() { } };

int II = 10;

int func(int i)
{
  C cobj_1_1[II];
  C cobj_1_2[II];
  for (i=0 ; i<10 ; i++) {
    {
      C cobj_2_1[II];
      C cobj_2_2[II];
      {
        C cobj_3_1[II];
        C cobj_3_2[II];
        if (i%2) {
          printf("  %d\n",i);
          continue;
        }
        bar();
      }
      foo();
    }
  }

  return 0;
}

int main()
{
  (void)func(1);

  printf("test ok\n");

  return 0;
}
