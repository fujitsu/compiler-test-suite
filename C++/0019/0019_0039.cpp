#include <cassert>

void test() {
  int x = 4;
  auto z = [&, &r = x]() -> int {
    assert(r == 4);
    return x + 2;
  }();
}

int main() {
  test();
  return 0;
}
