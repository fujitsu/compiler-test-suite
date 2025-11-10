#include <cstdio>

void foo() { throw 1; }
void bar() { throw 2; }
struct C { ~C() { } };

int func(int i)
{
  switch(i) {
  case 1:
    try {
      C cobj;
      try {
        bar();
      }
      catch(...) {
        printf("2 ");
        break;
      }
      foo();
    }
    catch(...) {
      printf("1 ");
    }
  case 2:
    printf("3 ");
  }

  return 0;
}

int main()
{
  (void)func(1);

  printf("test ok\n");

  return 0;
}
