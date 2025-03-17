#include <cassert>

void test() {
  int x = 1;
  auto y = [&x = ++x]() -> int {
    assert(x == 2);
    return x;
  }();
}

int main() {
  test();

  return 0;
}
