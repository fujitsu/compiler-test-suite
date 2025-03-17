#include <cassert>

void test() { assert(1.602'176'565e-19 == 1.602176565e-19); }

int main() {
  test();
  return 0;
}
