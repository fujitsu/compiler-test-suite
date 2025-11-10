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
      goto END;
    }
    catch(...) {
      printf("2 ");
    }
  }
  return 0;
 END:
  return 1;
}

int main()
{
  (void)func();

  printf("test ok\n");

  return 0;
}
