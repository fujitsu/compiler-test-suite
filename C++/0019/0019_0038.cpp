#include <cassert>

void test() {
  int x = 4;
  auto y = [&r = x, x = x + 1]() -> int {
    r += 2;
    return x + 2;
  }();
  assert(x == 6 && y == 7);
}

int main() {
  test();

  return 0;
}
