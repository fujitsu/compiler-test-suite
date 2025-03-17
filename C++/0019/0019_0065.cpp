#include <cassert>

struct X {
  template <class T> static T data;
};

template <class T> T X::data = T(123);

template <> int X::data<int>;

template <> int X::data<int>;

template <> int X::data<int> = 456;

void test() { assert(X::data<int> == 456); }

int main() { test(); }
