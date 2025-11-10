#include <cstdio>

void foo() { throw 1; }
void bar() { throw 2; }
struct C {
  C() {}
  ~C() {}
};

int func() {
  try {
    C cobj;
    try {
      bar();
    } catch (...) {
      printf("2 ");
      return 0;
    }
    foo();
  } catch (...) {
    printf("1 ");
  }
  return 0;
}

int main() {
  (void)func();

  printf("test ok\n");

  return 0;
}
