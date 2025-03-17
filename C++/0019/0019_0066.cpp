#include <cassert>

template <class U> struct X {
  template <class T> static T data;
};

template <class U> template <class T> T X<U>::data = T(123);

template <> template <class T> T X<double>::data = 456;

template <> template <> int X<double>::data<int> = 789;

void test() {
  assert(X<int>::data<int> == 123);
  assert(X<double>::data<long> == 456);
  assert(X<double>::data<double> == 456.);
  assert(X<double>::data<int> == 789);
}

int main() { test(); }
