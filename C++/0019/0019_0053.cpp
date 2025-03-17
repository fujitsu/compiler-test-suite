#include <cassert>

void test() {
  auto glambda = [](int i, auto a) { return i; };
  assert(glambda(0, 1) == 0);
}

int main() {
  test();
  return 0;
}
