#include <cassert>

template <class T> T vt = T(123);

extern template int vt<int>;

template int vt<int>;

struct X {
  template <class T> static T data;
};

template <class T> T X::data = T(456);

extern template int X::data<int>;

template int X::data<int>;

void test() {
  assert((vt<int> == 123));
  assert((X::data<int> == 456));
}

int main() { test(); }
