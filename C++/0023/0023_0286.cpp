#include <cassert>

template <template <class A, typename B> typename T> struct D {
  int mem;
};

template <template <template <typename X, class Y> typename R> typename S>
struct F {
  int mem;
  void fun() { assert(mem == 1); }
};

template <template <template <class M, typename N> typename P> typename Q>
void f(int mem) {
  assert(mem == 3);
};

int main() {
  F<D> fd{1};
  fd.fun();
  f<D>(3);
}