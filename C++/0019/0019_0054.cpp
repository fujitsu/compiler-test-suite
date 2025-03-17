#include <cassert>

template <class T> class X {
  T data;

public:
  X(T n) : data(n) {}
  operator T() const { return data; }
};

template class X<int>;

template <class T> T vt = T(1);

template <class T> T *vt<T *> = (T *)0;

template X<int> vt<X<int>>;
template X<int> *vt<X<int> *>;

template <template <class> class T> void foo() {
  assert(vt<T<int>> == 1);
  assert(vt<T<int> *> == 0);
}

void test() { foo<X>(); }

int main() { test(); }
