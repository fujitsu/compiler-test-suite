#include <cassert>

int flag = 0;

template <class T> class X {
  T data;

public:
  X(T t) : data(t) { flag++; }
  operator T() const { return data; }
};

template <template <class> class T, class V = T<int>> V vt = 123;

void test() {
  assert(vt<X> == 123);
  assert(flag > 0);
}

int main() { test(); }
