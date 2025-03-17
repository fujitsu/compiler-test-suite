#include <cassert>

namespace case1 {
template <class U, class T> T vt = (T)(U(0));

template <class T> T vt<T, T> = T(1);

template <> int vt<int, int> = 2;

void test() {
  assert((vt<int, int> == 2));
  assert((vt<double, double> == 1.));
  assert((vt<char, long> == 0));
}
}

namespace case2 {
struct X {
  template <class U, class T> static T vt;
};

template <class U, class T> T X::vt = (T)(U(0));

template <class T> T X::vt<T, T> = T(1);

template <> int X::vt<int, int> = 2;

void test() {
  assert((X::vt<int, int> == 2));
  assert((X::vt<double, double> == 1.));
  assert((X::vt<char, long> == 0));
}
}

void test() {
  case1::test();
  case2::test();
}

int main() { test(); }
