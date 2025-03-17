#include <cassert>

#define M(x, ...) __VA_ARGS__

void test() {
  int x[2] = {M(0'1'2, 3'4'5)};
  assert(x[0] == 345);
}

int main() {
  test();
  return 0;
}
