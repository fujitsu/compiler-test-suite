#include <cassert>

template <class T> T vt = T(123);

template <> int vt<int> = 456;

template int vt<int>;

void test() {
  assert(vt<int> == 456);
  assert(vt<char> == 123);
}

int main() { test(); }
