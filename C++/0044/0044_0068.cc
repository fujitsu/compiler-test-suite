#include <cstdio>

void foo() { throw 1; }
void bar() { throw 2; }
struct C { ~C() { } };

int func(int i)
{
  while(i) {
    try {
      foo();
    }
    catch(...) {
      printf("1 ");
      C cobj;
      try {
        bar();
        continue;
      }
      catch(...) {
        printf("2 ");
        i = 0;
      }
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
