#include <cassert>
int flag = 0;

template <class U, template <class> class T> T<U> vt = T<U>();

template <class V> struct X {
  template <class U, template <class> class T> static T<U> dt;

  void foo() const { flag++; }
};

template <class V>
template <class U, template <class> class T>
T<U> X<V>::dt = T<U>();

void test() {
  vt<int, X>.foo();
  assert(flag == 1);

  X<X<char>>::dt<double, X>.foo();
  assert(flag == 2);
}

int main() { test(); }
