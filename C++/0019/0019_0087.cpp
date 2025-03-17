#include <cassert>
#include <cstring>

int fun() { return 1; }

struct A {
  int a;
  int b[2] = {1, 2};
  int c[2]{1, 2};
  int d = fun();
  int e = b[0] + b[1];
  int f = d > 0 ? d : 0;
};

union B {
  int x;
  double y = 2.0;
};

struct S {
  int a;
  const char *b;
  int c;
  int d = b[a];
};
void test() {
  A a = {1, {2, 3}, {4, 5}, 6, 7, 8};
  assert(a.a == 1);
  assert(a.b[0] == 2);
  assert(a.b[1] == 3);
  assert(a.c[0] == 4);
  assert(a.c[1] == 5);
  assert(a.d == 6);
  assert(a.e == 7);
  assert(a.f == 8);

  B b = {1};
  assert(b.x == 1);

  B c;
  assert(c.y == 2.0);

  S ss = {1, "asdf", 3, 4};
  assert(ss.a == 1);
  assert(0 == strcmp(ss.b, "asdf"));
  assert(ss.c == 3);
  assert(ss.d == 4);
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
