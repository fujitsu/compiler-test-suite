#include <cassert>

template <class T> struct X {
  template <class U> static U data;
};

template <class T> template <class U> U X<T>::data = U(0);

template int X<double>::data<int>;

void test() { assert(X<double>::data<int> == 0); }

int main() { test(); }
