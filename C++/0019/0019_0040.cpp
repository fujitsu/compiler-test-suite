#include <cassert>

void test() {
  int x = 4;
  auto z = [=, r = x + 1]() -> int {
    assert(r == 5);
    return x + 2;
  }();
}

int main() {
  test();
  return 0;
}
