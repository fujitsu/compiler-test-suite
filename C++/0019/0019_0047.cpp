#include <cassert>

void test1() {
  auto glambda = [](auto &&...fpp) { return 1; };

  assert(glambda() == 1);
  assert(glambda(4) == 1);
  assert(glambda(4, true, 0, 1, 11) == 1);
}

void test2() {
  auto glambda = [](auto at) { return at; };
  assert(glambda(0) == 0);
}

void test3() {
  auto glambda = [](auto at, int it) { return it; };
  assert(glambda(0, 1) == 1);
}

int main() {
  test1();
  test2();
  test3();
  return 0;
}
