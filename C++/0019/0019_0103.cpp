#include <cassert>

void test() {
  assert(1048576 == 1'048'576);
  assert(0004000000 == 0'004'000'000);
  assert(0X100000 == 0x10'0000);
  assert(0b1111111 == 0b1'111'111);
}

int main() {
  test();
  return 0;
}
