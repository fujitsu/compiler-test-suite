#include <cstdio>

void foo() { throw 1; }
void bar() { throw 2; }
struct C { ~C() { } };

int II = 10;

int func(int i)
{
  C cobj_1_1[II];
  C cobj_1_2[II];
  for (i=0 ; i<10 ; i++) {
    try {
      C cobj_2_1[II];
      C cobj_2_2[II];
      try {
        C cobj_3_1[II];
        C cobj_3_2[II];
        if (i%2) {
          printf("  %d\n",i);
          continue;
        }
        bar();
      }
      catch(...) {
        printf("2 ");
      }
      foo();
    }
    catch(...) {
      printf("1 ");
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
