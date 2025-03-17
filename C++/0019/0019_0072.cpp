#include <cassert>

template <class T> constexpr T vt1 = T(0);

template <> int vt1<int> = 123;

template <class T> T vt2 = T(0);

template <> constexpr int vt2<int> = 123;

void test() {
  assert(vt1<int> == 123);
  vt1<int> = 456;
  assert(vt1<int> == 456);

  assert(vt2<int> == 123);
  vt2<double> = 456.;
  assert(vt2<double> == 456.);
}

int main() { test(); }
