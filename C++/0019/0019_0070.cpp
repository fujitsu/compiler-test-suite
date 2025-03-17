#include <cassert>

template <class T> T vt = 123;

int main() {
  assert(vt<int> == 123);
  return 0;
}
