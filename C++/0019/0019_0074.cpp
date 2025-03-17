#include <cassert>

template <int N> constexpr int vt = N;

struct X {
  enum E { e1, e2, e3 };

  template <E N> static int dt;
};

template <X::E N> int X::dt = N;

void test() {
  assert(vt<123> == 123);
  assert(vt<-123> == -123);
  assert(X::dt<X::e1> == X::e1);
  assert(X::dt<X::e2> == X::e2);
  assert(X::dt<X::e3> == X::e3);
}

int main() { test(); }
