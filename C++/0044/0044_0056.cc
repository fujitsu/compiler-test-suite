#include <cstdio>

void foo() { throw 1; }
void bar() { throw 2; }
struct C {
  C() { }
  ~C() { }
};

int func()
{
  try {
    foo();
  }
  catch(...) {
    printf("1 ");
    C cobj;
    try {
      bar();
      return 1;
    }
    catch(...) {
      printf("2 ");
      return 0;
    }
  }
  return 0;
}

int main()
{
  (void)func();

  printf("test ok\n");

  return 0;
}
