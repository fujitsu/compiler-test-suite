#include <cassert>

void test1() {
  int a = 1;
  auto glambda = [&](auto b) { return a + b; };
  assert(glambda(1) == 2);
}

void test2() {
  int a = 1;
  auto glambda = [=](auto b) { return a + b; };
  assert(glambda(1) == 2);
}

int main() {
  test1();
  test2();
  return 0;
}
