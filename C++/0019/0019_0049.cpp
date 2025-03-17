#include <cassert>

void test() {
  auto lambda = [](const auto a, const auto b) { return a + b; };
  long (*fp)(long, long) = lambda;
  assert(fp(1, 1) == 2);
}

int main() {
  test();
  return 0;
}
