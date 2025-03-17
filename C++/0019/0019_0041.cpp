#include <cassert>

void test() {
  int x = 4;
  int y = 5;
  auto a = [x, r = y]() -> int {
    assert(x == 4);
    return r;
  }();
}

int main() {
  test();
  return 0;
}
