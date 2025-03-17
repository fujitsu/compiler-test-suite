#include <cassert>

auto lambda = [](const auto &a, const auto &b) { return a + b; };

void gn(int gpara) {}

auto fn() { return lambda(1, 1); }

void test() {
  int x = lambda(1, 1);
  assert(x == 2);

  gn(lambda(1, 1));

  assert(lambda(1, 1) == 2);

  fn();
}

int main() {
  test();
  return 0;
}
