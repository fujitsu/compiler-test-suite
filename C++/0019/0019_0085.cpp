#include <cassert>

struct A {
  bool a{false};
  int b = 1;
  struct B {
    int i;
    int j;
  } c{2, 3};

  int d = b;
  int &e = d;
  int *f = &e;
  float g = 1.0f;
} a;

void test() {
  A b;
  assert(b.a == false);
  assert(b.b == 1);
  assert(b.c.i == 2);
  assert(b.d == 1);
  assert(b.e == 1);
  assert(*b.f == 1);
  assert(b.g == 1.0);
}

int main(int argc, char *argv[]) {
  test();
  return 0;
}
