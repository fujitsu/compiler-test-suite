#include <cassert>

void test() {
  auto lambda = [](const auto &a, const auto &b) { return a + b; };
  assert(lambda(1, 1) == 2);
}

int main() {
  test();
  return 0;
}
