#include <cassert>

struct Outer {
  template <class T> static const T vt;

  template <class O> struct Inner {
    template <class T> static const T vt;
  };
};

template <class T> const T Outer::vt = T(111);

template <class O> template <class T> const T Outer::Inner<O>::vt = T(222);

namespace ns {
template <class O> struct Outer {
  template <class T> static const T vt;

  struct Inner {
    template <class T> static const T vt;
  };
};

template <class O> template <class T> const T Outer<O>::vt = T(333);
}

template <class O> template <class T> const T ns::Outer<O>::Inner::vt = T(444);

void test() {
  assert((Outer::vt<int> == 111));
  assert((Outer::Inner<double>::vt<int> == 222));
  assert((ns::Outer<char>::vt<int> == 333));
  assert((ns::Outer<Outer>::Inner::vt<int> == 444));
}

int main() { test(); }
